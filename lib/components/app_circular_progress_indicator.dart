import 'package:flutter/material.dart';
import 'package:termii_store/constants/colors.dart';

class AppCircularProgressIndicator extends StatelessWidget {
  const AppCircularProgressIndicator({
    Key? key,
    this.size,
    this.color,
  }) : super(key: key);
  final double? size;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return size == null
        ? Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: color ?? AppColors.appBlue,
            ),
          )
        : Center(
            child: SizedBox(
              width: size,
              height: size,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: color ?? AppColors.appBlue,
              ),
            ),
          );
  }
}
