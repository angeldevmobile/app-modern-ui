import 'package:flutter/material.dart';

class AppAssets {
  static String kGoogle = 'assets/login/google.png';
  static String kApple = 'assets/login/apple.png';
  static String kFacebook = 'assets/login/facebook.png';
  static String kOnboardingFirst = 'assets/login/onboarding-first.png';
  static String kOnboardingSecond = 'assets/login/onboarding-second.png';
  static String kOnboardingThird = 'assets/login/onboarding-third.png';
}

class AppColors {
  static const Color kPrimary = Color(0xFFD1A661);
  static const Color kWhite = Color(0xFFFEFEFE);
  static const Color kGrey60 = Color(0xFF9CA4AB);
  static const Color kGrey70 = Color(0xFF78828A);
  static const Color kGrey100 = Color(0xFF171725);

  static LinearGradient customOnboardingGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      const Color(0xFF110C1D).withOpacity(0.0),
      const Color(0xFF110C1D),
    ],
  );
}
