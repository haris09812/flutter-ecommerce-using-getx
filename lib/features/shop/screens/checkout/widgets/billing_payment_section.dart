import 'package:Arccessory/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:Arccessory/common/widgets/texts/section_heading.dart';
import 'package:Arccessory/utils/constants/colors.dart';
import 'package:Arccessory/utils/constants/image_strings.dart';
import 'package:Arccessory/utils/constants/sizes.dart';
import 'package:Arccessory/utils/helpers/exports.dart';
import 'package:flutter/material.dart';
class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: (){},),
        const SizedBox(height: TSizes.spaceBtwItems / 2,),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? TColors.light : TColors.white,
              padding: EdgeInsets.all(TSizes.sm),
              child: Image(image: AssetImage(TImages.paypal), fit: BoxFit.contain,),
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2,),
            Text('PayPal', style: Theme.of(context).textTheme.bodyLarge,),
          ],
        )
      ],
    );
  }
}
