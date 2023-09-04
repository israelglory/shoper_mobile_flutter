import 'package:flutter/material.dart';

import 'package:termii_store/components/app_rectangle.dart';
import 'package:termii_store/components/app_text.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    Key? key,
    required this.icon,
    required this.text,
    this.onTap,
  }) : super(key: key);
  final String icon;
  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AppRectangle(
        radius: 10,
        padding: const EdgeInsets.all(17),
        color: Colors.transparent,
        borderWidth: 1,
        borderColor: Colors.grey,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 22,
              width: 22,
            ),
            const SizedBox(
              width: 10,
            ),
            AppText(
              text,
              color: Colors.black,
              fontSize: 16,
            ),
          ],
        ),
      ),
    );
  }
}
