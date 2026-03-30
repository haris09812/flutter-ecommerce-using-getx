import 'package:Arccessory/common/widgets/images/t_rounded_image.dart';
import 'package:Arccessory/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:Arccessory/common/widgets/texts/t_product_title_text.dart';
import 'package:Arccessory/utils/constants/colors.dart';
import 'package:Arccessory/utils/constants/image_strings.dart';
import 'package:Arccessory/utils/constants/sizes.dart';
import 'package:Arccessory/utils/helpers/exports.dart';
import 'package:flutter/material.dart';
class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Image
        TRoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),

        /// Title, Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TBrandTitleWithVerifiedIcon(title: 'Bobby Brown'),
              Flexible(child: TProductTitleText(title: 'White Diamond Earings', maxLines: 1,)),
              /// Attributes
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'Green ', style: Theme.of(context).textTheme.bodyLarge),
                        TextSpan(text: 'Size ', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'EU 36 ', style: Theme.of(context).textTheme.bodyLarge),
                      ]
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}