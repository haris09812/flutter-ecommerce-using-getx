import 'package:Arccessory/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:Arccessory/utils/constants/colors.dart';
import 'package:Arccessory/utils/constants/sizes.dart';
import 'package:Arccessory/utils/helpers/exports.dart';
import 'package:flutter/material.dart';
class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? TColors.dark : TColors.white,
      padding: EdgeInsets.only(
        top: TSizes.sm,
        bottom: TSizes.sm,
        right: TSizes.sm,
        left: TSizes.sm,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Have a promo code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          /// button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark ? TColors.white.withOpacity(0.5) : TColors.dark.withOpacity(0.5),
                backgroundColor: TColors.grey.withOpacity(0.2),
                side: BorderSide(color: TColors.grey.withOpacity(0.1)),
              ),
              child: const Text("Apply"),
            ),
          ),
        ],
      ),
    );
  }
}
