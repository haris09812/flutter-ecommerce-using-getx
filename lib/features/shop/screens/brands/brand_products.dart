import 'package:Arccessory/common/widgets/appbar/appbar.dart';
import 'package:Arccessory/common/widgets/brand/brand_card.dart';
import 'package:Arccessory/features/shop/screens/all_products/widgets/sortable_product.dart';
import 'package:Arccessory/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Bobby Brown'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Brand Details
              BrandCard(showBorder: true,),
              SizedBox(height: TSizes.spaceBtwItems,),

              SortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
