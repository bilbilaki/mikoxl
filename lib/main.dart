// File: lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mikoxl/src/core/hive_manager.dart';
import 'package:lottie/lottie.dart';
import 'package:mikoxl/src/providers/onboarding_provider.dart';
import 'package:mikoxl/src/ui/home_screen.dart';
import 'package:mikoxl/src/ui/onboarding/onboarding_flow.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'app.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // create and initialize hive manager before running the app
  final hiveManager = HiveBoxManager();
  await hiveManager.init();
  

  runApp(
    ProviderScope(
      overrides: [
        hiveManagerProvider.overrideWithValue(hiveManager),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 @override
   Widget build(BuildContext context) {
     return MaterialApp(
    
     home: const SplashScreen(),
   );
   }
 }

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    debugPrint("Splash screen initialized");

    _navigateToHome();
  }

  Future<void> _navigateToHome() async {
    debugPrint("Waiting for 5 seconds before navigation...");
    await Future.delayed(const Duration(seconds: 5));
    if (!mounted) return;

    debugPrint("Navigating to home screen...");
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const StartPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Lottie.asset("assets/Logo/Logo.json")),
    );
  }
}


class StartPage extends ConsumerWidget {
  const StartPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onboardingAsync = ref.watch(onboardingStatusProvider);
    return MaterialApp(
      title: 'Mikoxl',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.dark(),
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
      ),
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: const [
          Breakpoint(start: 0, end: 450, name: MOBILE),
          Breakpoint(start: 451, end: 800, name: TABLET),
          Breakpoint(start: 801, end: 1920, name: DESKTOP),
          Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      home: onboardingAsync.when(
        data: (seen) {
          if (seen) {
            return const HomeScreen();
          } else {
            return OnboardingFlow(onComplete: () {
              // after onboarding complete navigate to Home
              // navigator push replacement to avoid back to onboarding
              Navigator.of(navigationKey.currentContext!).pushReplacement(MaterialPageRoute(builder: (_) => const HomeScreen()));
            });
          }
        },
        loading: () => const Scaffold(body: Center(child: CircularProgressIndicator())),
        error: (_, __) => const Scaffold(body: Center(child: Text('Error initializing'))),
      ),
      navigatorKey: navigationKey,
    );
  }
}

final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();