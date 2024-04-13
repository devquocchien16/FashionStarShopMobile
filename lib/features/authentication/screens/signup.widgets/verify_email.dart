import 'package:fashion_star_shop/features/authentication/screens/login/login.dart';
import 'package:fashion_star_shop/features/authentication/screens/signup.widgets/success_screen.dart';
import 'package:fashion_star_shop/utils/constants/image_string.dart';
import 'package:fashion_star_shop/utils/constants/sizes.dart';
import 'package:fashion_star_shop/utils/constants/text_string.dart';
import 'package:fashion_star_shop/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyMailScreen extends StatelessWidget {
  const VerifyMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            Image(
              image: AssetImage(TImages.verifyIllustration),
              width: THelperFunctions.screenWidth() * 0.6,
            ),
            SizedBox(height: TSizes.spaceBtwSections),
            Text(
              TTexts.confirmEmail,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: TSizes.spaceBtwItems),
            Text(
              "example@gmail.com",
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: TSizes.spaceBtwItems),
            Text(
              TTexts.confirmEmailSubTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: TSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => SuccessScreen(
                  image: TImages.staticSuccessIllustration,
                  title: TTexts.yourAccountCreatedTitle,
                  subTitle: TTexts.yourAccountCreatedSubTitle,
                  onPressed: () => Get.to(() => const LoginScreen()),
                ),
                ),
                child: const Text('Continue'),
              ),
            ),
            SizedBox(height: TSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Resend Email'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
