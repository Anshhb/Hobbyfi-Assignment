import 'package:flutter/material.dart';
import 'package:hobbyfi_assignment/core/constants/app_colors.dart';
import 'package:hobbyfi_assignment/core/constants/size_config.dart';

class CommonCardWidget extends StatelessWidget {
  final Widget child;
  final double? padding;
  final double? blurRadius;
  final Color? shadowColor;
  final double borderRadius;
  final double? height;
  final double? width;
  final Color color;
  final double? borderWidth;
  final Color? borderColor;

  const CommonCardWidget({
    super.key,
    required this.child,
    this.padding,
    this.blurRadius,
    this.shadowColor,
    this.borderRadius = 10.0,
    this.height,
    this.width,
    this.color = AppColors.white,
    this.borderWidth,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: blurRadius,
      shadowColor: shadowColor,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        side: borderWidth != null
            ? BorderSide(
                color: borderColor ?? AppColors.black,
                width: borderWidth!,
              )
            : BorderSide.none,
      ),
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.all(padding ?? SizeConfig.size15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
          border: borderWidth != null
              ? Border.all(
                  color: borderColor ?? AppColors.black,
                  width: borderWidth!,
                )
              : null,
        ),
        child: child,
      ),
    );
  }
}
