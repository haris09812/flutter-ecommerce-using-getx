import 'package:Arccessory/common/widgets/styles/spacing_styles.dart';
import 'package:Arccessory/common/widgets/login_signup/form_divider.dart';
import 'package:Arccessory/features/auth/screens/login/widgets/login_form.dart';
import 'package:Arccessory/features/auth/screens/login/widgets/login_header.dart';
import 'package:Arccessory/common/widgets/login_signup/social_buttons.dart';
import 'package:Arccessory/utils/helpers/exports.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LoginHeader(),

              // Form
              const LoginForm(),

              //Divider
              FormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              //Footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}








