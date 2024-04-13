import 'package:fashion_star_shop/common/styles/spacing_styles.dart';
import 'package:fashion_star_shop/features/authentication/screens/signup.widgets/signup.dart';
import 'package:fashion_star_shop/naviagation_menu.dart';
import 'package:fashion_star_shop/utils/constants/image_string.dart';
import 'package:fashion_star_shop/utils/constants/sizes.dart';
import 'package:fashion_star_shop/utils/constants/text_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.poddingwithAppBorHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(height: 150, image: AssetImage(TImages.onBoardingImage1)),
                  Text(TTexts.loginTitle1, style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: TSizes.sm),
                  Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              // Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
                  child: Column(
                    children: [
                      /// Email
                      TextFormField(
                        decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: 'Email'),
                      ), // TextFormField
                      const SizedBox(height: TSizes.spaceBtwInputField),
                      // Password
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: 'Password',
                            suffixIcon: Icon(Iconsax.eye_slash)),
                      ), // TextFormField
                      const SizedBox(height: TSizes.spaceBtwInputField / 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text(TTexts.rememberMe),
                            ],
                          ),
                          TextButton(onPressed: (){}, child: const Text(TTexts.forgetPassword),)
                        ],
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=> Get.to(() => const NavigationMenu()), child: Text(TTexts.signIn))),
                      const SizedBox(height: TSizes.spaceBtwItems,),

                      SizedBox(width: double.infinity,child: OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()), child: Text(TTexts.createAccount))),
                      const SizedBox(height: TSizes.spaceBtwSections,),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(child: Divider(color: TColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
                  Flexible(child: Divider(color: TColors.grey, thickness: 0.5, indent: 60, endIndent: 60)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
