import 'package:flutter/material.dart';
import 'package:termii_store/components/app_text.dart';
import 'package:termii_store/constants/colors.dart';

import 'app_circular_progress_indicator.dart';

class AppButton extends StatelessWidget {
  final EdgeInsets? padding, margin;
  final String? title;
  final Function()? onPressed;
  final Widget? child;
  final bool? loading;
  final MainAxisAlignment? mainAxisAlignment;
  final Color? color, hoverColor, disableTextColor, disableColor, borderColor;
  final double? elevation, disableElevation, radius, borderWidth, height, width;
  final BorderStyle? borderStyle;
  const AppButton(
      {Key? key,
      this.onPressed,
      this.child,
      this.color,
      this.elevation,
      this.hoverColor,
      this.disableTextColor,
      this.disableColor,
      this.disableElevation,
      this.radius,
      this.padding,
      this.margin,
      this.loading,
      this.mainAxisAlignment,
      this.borderColor,
      this.borderWidth,
      this.borderStyle,
      this.height,
      this.width,
      this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      margin: margin,
      child: MaterialButton(
          shape: RoundedRectangleBorder(
            side: borderWidth == null
                ? BorderSide.none
                : BorderSide(
                    width: borderWidth ?? 0,
                    color: borderColor ?? Colors.black,
                    style: borderStyle ?? BorderStyle.solid),
            borderRadius: BorderRadius.circular(radius ?? 10),
          ),
          color: color ?? Colors.black,
          elevation: elevation ?? 0,
          minWidth: 0,
          height: height ?? 50,
          hoverColor: hoverColor,
          disabledColor: disableColor,
          disabledTextColor: disableTextColor,
          disabledElevation: disableElevation,
          padding: padding ?? const EdgeInsets.all(0),
          onPressed: onPressed,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          child: child ??
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    title ?? '',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  if (loading ?? false)
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      child: const AppCircularProgressIndicator(
                        size: 20,
                        color: AppColors.appBlue,
                      ),
                    )
                ],
              )),
    );
  }
}
