import 'package:flutter/material.dart';
import 'package:fashion_star_shop/utils/constants/colors.dart';
import 'package:fashion_star_shop/utils/constants/sizes.dart';

class TRoundedContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  const TRoundedContainer({
    Key? key,
    this.child,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.showBorder = false,
    this.radius = TSizes.cardRadiusLg,
    this.backgroundColor = TColors.White,
    this.borderColor = TColors.borderPrimary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
