import 'package:flutter/material.dart';
import 'package:fashion_star_shop/utils/constants/sizes.dart';

class TGridLayout extends StatelessWidget {
  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  const TGridLayout({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 288,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: mainAxisExtent!,
        mainAxisSpacing: TSizes.gridViewSpacing,
        crossAxisSpacing: TSizes.gridViewSpacing,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
