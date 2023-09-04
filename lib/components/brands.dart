import 'package:flutter/material.dart';
import 'package:termii_store/components/app_text.dart';
import 'package:termii_store/components/spacing.dart';

class BrandsWidget extends StatelessWidget {
  final String brandName;
  final String image;
  const BrandsWidget({super.key, required this.brandName, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          width: 67,
          height: 67,
        ),
        const Spacing.height(8.0),
        AppText(
          brandName,
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.28,
        )
      ],
    );
  }
}
