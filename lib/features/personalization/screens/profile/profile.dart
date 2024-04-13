import 'package:fashion_star_shop/common/widgets/appbar/appbar.dart';
import 'package:fashion_star_shop/common/widgets/images/circular_image.dart';
import 'package:fashion_star_shop/common/widgets/texts/section_heading.dart';
import 'package:fashion_star_shop/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:fashion_star_shop/utils/constants/image_string.dart';
import 'package:fashion_star_shop/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showBackArrow: true, title: Text('Profile')),
      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: TImages.user, width: 80, height: 80),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    ),
                  ], // Column children
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems/2,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),
              const TSectionHeading(title: "Profile information", showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(onPressed: (){}, title: 'Name', value: "Name of user"),
              const TSectionHeading(title: "Personal information", showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(onPressed: (){}, title: 'e-mail', value: "Email of user"),
              TProfileMenu(onPressed: (){}, title: 'phone', value: "Phone of user"),
              TProfileMenu(onPressed: (){}, title: 'gender', value: "Gender of user"),
              TProfileMenu(onPressed: (){}, title: 'Date of birth', value: "DOB of user"),
              TProfileMenu(onPressed: (){}, title: 'Address', value: "Address of user"),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text("Close Account", style: TextStyle(color: Colors.red)),
                ),
              ),

            ], // Column children
          ), // Column
        ), // Padding
      ), // SingleChildScrollView body
    ); // Scaffold
  }
}
