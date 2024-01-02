import 'package:coffee_shop_app/presentation/screens/home_screen/home_base_screen.dart';
import 'package:coffee_shop_app/presentation/screens/login_screen/login_screen.dart';
import 'package:coffee_shop_app/presentation/screens/login_screen/pin_screen.dart';
import 'package:coffee_shop_app/presentation/screens/onboarding_screen/onboarding_screen.dart';
import 'package:coffee_shop_app/presentation/screens/register_screen/register_screen.dart';
import 'package:coffee_shop_app/presentation/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/homebasescreen",
      routes: {
        "/splashscreen": (context) => const SplashScreen(),
        "/onboardscreen": (context) => const OnBoardingScreen(),
        "/registerscreen": (context) => const RegisterScreen(),
        "/loginscreen": (context) => const LoginScreen(),
        "/pinscreen": (context) => const PinScreen(),
        "/homebasescreen": (context) => const HomaBaseScreen()
      },
    );
  }
}