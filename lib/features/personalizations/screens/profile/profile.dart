import 'package:Arccessory/common/widgets/appbar/appbar.dart';
import 'package:Arccessory/common/widgets/images/t_circular_image.dart';
import 'package:Arccessory/common/widgets/texts/section_heading.dart';
import 'package:Arccessory/features/personalizations/screens/profile/widgets/profile_menu.dart';
import 'package:Arccessory/utils/constants/image_strings.dart';
import 'package:Arccessory/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true, title: Text('Profile'),
      ),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: TImages.user, width: 80, height: 90),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Heading Profile Info
              const TSectionHeading(title: 'Profile Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              ProfileMenu(title: 'Name', value: 'Solution with A', onPressed: (){}),
              ProfileMenu(title: 'Username', value: 'solution_with_a', onPressed: (){}),

              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              ///Heading Personal Info
              ProfileMenu(title: 'User ID', value: '0000294780', icon: Iconsax.copy, onPressed: (){}),
              ProfileMenu(title: 'E-mail', value: 'coding_with_a', onPressed: (){}),
              ProfileMenu(title: 'Phone Number', value: '+92-303-1234567', onPressed: (){}),
              ProfileMenu(title: 'Gender', value: 'Female', onPressed: (){}),
              ProfileMenu(title: 'Date of Birth', value: '17 May, 1999', onPressed: (){}),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Close Account', style: TextStyle(color: Colors.red),),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}


