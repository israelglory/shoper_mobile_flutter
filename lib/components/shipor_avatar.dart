import 'package:flutter/material.dart';
import 'package:termii_store/components/app_text.dart';
import 'package:termii_store/components/spacing.dart';
import 'package:termii_store/constants/assets.dart';

class ShiporAvatar extends StatelessWidget {
  const ShiporAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AppAssets.shiporAvatar,
          height: 34,
          width: 34,
        ),
        Spacing.width(10),
        const AppText(
          'Shoppr',
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}
