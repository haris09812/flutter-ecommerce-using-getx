import 'package:Arccessory/utils/constants/colors.dart';
import 'package:Arccessory/utils/constants/sizes.dart';
import 'package:Arccessory/utils/constants/text_strings.dart';
import 'package:Arccessory/utils/helpers/exports.dart';
import 'package:flutter/material.dart';

class TermAndConditionCheckbox extends StatelessWidget {
  const TermAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text.rich(
            TextSpan(
                children: [
                  TextSpan(text: '${TTexts.iAgreeTo} ' ,style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: '${TTexts.privacyPolicy} ' ,style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? Colors.white : TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? Colors.white : TColors.primary,
                  )),
                  TextSpan(text: '${TTexts.tAnd} ' ,style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: '${TTexts.termOfUse} ' ,style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? Colors.white : TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? Colors.white : TColors.primary,
                  )),
                ]
            )
        )
      ],
    );
  }
}