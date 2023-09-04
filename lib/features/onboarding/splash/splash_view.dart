import 'package:flutter/material.dart';
import 'package:termii_store/components/app_button.dart';
import 'package:termii_store/components/app_text.dart';
import 'package:termii_store/components/shipor_avatar.dart';
import 'package:termii_store/components/spacing.dart';
import 'package:termii_store/constants/assets.dart';

import '../login/login_screen.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          const Positioned(
            top: 50.0,
            left: 24.0,
            right: 14.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppText(
                      'Define',
                      fontSize: 64,
                      fontWeight: FontWeight.w600,
                      height: 0.77,
                      letterSpacing: -3.20,
                    ),
                    Spacing.width(10.0),
                    ShiporAvatar()
                  ],
                ),
                AppText(
                  'yourself in your unique way.',
                  fontSize: 64,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              AppAssets.wave,
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            left: 0.0,
            child: Image.asset(
              AppAssets.splash,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              bottom: 0.0,
              right: 0.0,
              left: 0.0,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.fromLTRB(24.0, 17.0, 25.0, 21.0),
                child: AppButton(
                  radius: 10.0,
                  padding: const EdgeInsets.symmetric(vertical: 17.0),
                  color: const Color.fromARGB(255, 43, 33, 33),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginView()));
                  },
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        'Get Started',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                      Spacing.width(10.0),
                      Icon(Icons.arrow_forward_ios_rounded, color: Colors.white)
                    ],
                  ),
                ),
              ))
        ],
      )),
    );
  }
}
