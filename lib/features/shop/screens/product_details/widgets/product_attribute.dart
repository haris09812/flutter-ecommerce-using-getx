import 'package:Arccessory/common/widgets/chips/rounded_choice_chips.dart';
import 'package:Arccessory/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:Arccessory/common/widgets/texts/section_heading.dart';
import 'package:Arccessory/common/widgets/texts/t_product_price_text.dart';
import 'package:Arccessory/common/widgets/texts/t_product_title_text.dart';
import 'package:Arccessory/utils/constants/colors.dart';
import 'package:Arccessory/utils/constants/sizes.dart';
import 'package:Arccessory/utils/helpers/exports.dart';
import 'package:flutter/material.dart';
class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// ---Selected Attributes Pricing and Description
        TRoundedContainer(
          padding: EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              /// ---Title, Price and Stock Status
              Row(
                children: [
                  TSectionHeading(title: 'Variation', showActionButton: false,),
                  SizedBox(width: TSizes.spaceBtwItems,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(title: 'Price : ', smallSize: true,),
                          /// Actual Price
                          Text(
                            'Rs. 2499.0',
                            style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems,),
                          /// Sale Price
                          TProductPriceText(price: '1999.0')
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const TProductTitleText(title: 'Stock : ', smallSize: true,),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),
                        ],
                      )
                    ],
                  )
                ],
              ),

              /// Variation Description
              TProductTitleText(
                title: 'This is the Description of the product and it can go upto max 4 line',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        /// ---Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors', showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Green', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Blue',  selected: true, onSelected: (value){}),
                TChoiceChip(text: 'Yellow', selected: false, onSelected: (value){}),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Size', showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'EU 34', selected: true, onSelected: (value){}),
                TChoiceChip(text: 'EU 36', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'EU 38', selected: false, onSelected: (value){}),
              ],
            )
          ],
        ),
      ],
    );
  }
}
