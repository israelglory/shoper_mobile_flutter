import 'package:flutter/material.dart';
import 'package:termii_store/components/app_text.dart';
import 'package:termii_store/components/spacing.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
        ),
        const Spacing.mediumWidth(),
        const AppText(
          'or',
          color: Color(0xFF979797),
          fontSize: 16,
        ),
        const Spacing.mediumWidth(),
        Expanded(
          child: Container(
            width: double.maxFinite,
            height: 1,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
