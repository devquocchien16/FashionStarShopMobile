import 'package:fashion_star_shop/common/widgets/layouts/grid_layout.dart';
import 'package:fashion_star_shop/features/shop/screens/all_products/all_products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fashion_star_shop/common/widgets/images/images_rounded.dart';
import 'package:fashion_star_shop/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:fashion_star_shop/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:fashion_star_shop/features/shop/screens/home/widgets/home_categories.dart';
import 'package:fashion_star_shop/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:fashion_star_shop/utils/constants/image_string.dart';
import 'package:fashion_star_shop/utils/constants/sizes.dart';
import 'package:fashion_star_shop/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:fashion_star_shop/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:fashion_star_shop/common/widgets/texts/section_heading.dart';
import 'package:fashion_star_shop/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),
                  TSearchContainer(text: 'Search'),
                  SizedBox(height: TSizes.spaceBtwSections),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(title: 'Categories', showActionButton: false,),
                        SizedBox(height: TSizes.spaceBtwItems,),
                        THomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(banners: [TImages.promoBonner1, TImages.promoBonner3]),
                  const SizedBox(height: TSizes.spaceBtwSections,),

                  TSectionHeading(title: 'All products', onPressed: ()=>Get.to(() => const AllProducts()),),

                  const SizedBox(height: TSizes.spaceBtwSections/ 200),
                  TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
