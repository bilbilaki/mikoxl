import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'api_module.dart';

// Riverpod provider for Dio (convenience for non-injectable flows)
final dioProvider = Provider<Dio>((ref) {
  final module = ApiModule$Injection._(); // note: if you use injectable generated GetIt, use that; this is fallback
  return module.provideDio();
});