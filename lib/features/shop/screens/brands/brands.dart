import 'package:Arccessory/common/widgets/appbar/appbar.dart';
import 'package:Arccessory/common/widgets/brand/brand_card.dart';
import 'package:Arccessory/common/widgets/layouts/grid_layout.dart';
import 'package:Arccessory/common/widgets/texts/section_heading.dart';
import 'package:Arccessory/features/shop/screens/brands/brand_products.dart';
import 'package:Arccessory/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Brand'), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              TSectionHeading(title: "Brands" ,showActionButton: false,),
              SizedBox(height: TSizes.spaceBtwItems,),

              /// Brands
              TGridLayout(itemCount: 6, mainAxisExtent: 80, itemBuilder: (_, index) => BrandCard(showBorder: true,onTap: ()=> Get.to(()=> const BrandProducts()),)),
            ],
          ),
        ),
      ),
    );
  }
}
