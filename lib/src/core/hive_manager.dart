import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mikoxl/src/hive/hive_registrar.g.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
final hiveManagerProvider = Provider<HiveBoxManager>((ref) => HiveBoxManager());

class HiveBoxManager {
  bool _initialized = false;

  Future<void> init({String? path}) async {
    if (_initialized) return;
    if (path != null) {
      await Hive.initFlutter(path);
    } else {
      await Hive.initFlutter();
    }
    // register adapters - you already generated hive_adapters.dart
    // import generated adapter registrar
    try {
      // ignore: avoid_dynamic_calls
      Hive.registerAdapters();
    } catch (_) {
      // if adapters already registered, it's ok
    }

    // open needed boxes
    await Future.wait([
      Hive.openBox<String>('cache_box'), // generic JSON cache storage
      Hive.openBox('favorites_box'),
      Hive.openBox('account_box'),
    ]);

    _initialized = true;
  }

  Box<String> get cacheBox => Hive.box<String>('cache_box');

  Future<void> clearCache() async {
    await cacheBox.clear();
  }

  // generic helpers
  Future<void> putJson(String key, Map<String, dynamic> jsonMap) async {
    final envelope = {
      'ts': DateTime.now().toUtc().millisecondsSinceEpoch,
      'data': jsonMap,
    };
    await cacheBox.put(key, jsonEncode(envelope));
  }

  Map<String, dynamic>? getJson(String key, {Duration? maxAge}) {
    final raw = cacheBox.get(key);
    if (raw == null) return null;
    final envelope = jsonDecode(raw) as Map<String, dynamic>;
    final ts = envelope['ts'] as int?;
    final data = envelope['data'] as Map<String, dynamic>?;
    if (ts == null || data == null) return null;
    if (maxAge != null) {
      final age = DateTime.now().toUtc().millisecondsSinceEpoch - ts;
      if (age > maxAge.inMilliseconds) {
        return null;
      }
    }
    return data;
  }
}