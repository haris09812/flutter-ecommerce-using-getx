import 'package:Arccessory/features/auth/screens/password_configuration/reset_password.dart';
import 'package:Arccessory/utils/constants/sizes.dart';
import 'package:Arccessory/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Heading
            Text(TTexts.tForgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(TTexts.tForgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: TSizes.spaceBtwSections * 2),

            ///Text Field
            TextFormField(
              decoration: InputDecoration(labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            ///Submit Button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.offAll(() => const ResetPasswordScreen()), child: const Text(TTexts.submit))),
          ],
        ),
      ),
    );
  }
}
