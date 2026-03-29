import 'package:Arccessory/common/widgets/brand/brand_show_case.dart';
import 'package:Arccessory/common/widgets/layouts/grid_layout.dart';
import 'package:Arccessory/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:Arccessory/common/widgets/texts/section_heading.dart';
import 'package:Arccessory/utils/constants/image_strings.dart';
import 'package:Arccessory/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Brand
              BrandShowcase(images: [TImages.productImage1,TImages.productImage1,TImages.productImage1],),
              BrandShowcase(images: [TImages.productImage1,TImages.productImage1,TImages.productImage1],),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Products
              TSectionHeading(title: 'You might like', onPressed: (){}),
              const SizedBox(height: TSizes.spaceBtwItems),

              TGridLayout(itemCount: 4, itemBuilder: (_, index) => ProductCardVertical()),
              const SizedBox(height: TSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
