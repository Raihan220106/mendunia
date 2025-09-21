import 'package:flutter/material.dart';
import '../screens/onboarding/onboarding_screen.dart';
import '../screens/home/home_screen.dart';
// ... import screen lainnya

class AppRoutes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    '/onboarding': (context) => const OnboardingScreen(),
    '/home': (context) => const HomeScreen(),
    // ... tambahkan route lain
  };
}
