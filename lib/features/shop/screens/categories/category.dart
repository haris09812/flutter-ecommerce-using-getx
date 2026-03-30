import 'dart:math';

import 'package:Arccessory/common/widgets/appbar/appbar.dart';
import 'package:Arccessory/common/widgets/images/t_rounded_image.dart';
import 'package:Arccessory/common/widgets/layouts/grid_layout.dart';
import 'package:Arccessory/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:Arccessory/common/widgets/texts/section_heading.dart';
import 'package:Arccessory/utils/constants/image_strings.dart';
import 'package:Arccessory/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Earings'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              TRoundedImage(
                width: double.infinity,
                imageUrl: TImages.promoBanner3,
                applyImageRadius: true,
              ),
              SizedBox(height: TSizes.spaceBtwSections,),

              Column(
                children: [
                  ///Heading
                  TSectionHeading(title: 'Products',showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  TGridLayout(itemCount: 8, itemBuilder: (_, index) => const ProductCardVertical()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
