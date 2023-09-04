import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:termii_store/core/di/locator.dart';
import 'package:termii_store/features/onboarding/splash/splash_view.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
        useMaterial3: false,
      ),
      home: const SplashView(),
    );
  }
}
