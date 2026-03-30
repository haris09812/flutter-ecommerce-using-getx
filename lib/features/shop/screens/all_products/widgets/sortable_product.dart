import 'package:Arccessory/common/widgets/layouts/grid_layout.dart';
import 'package:Arccessory/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:Arccessory/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value){},
          items: ['Name', 'Higher Price', 'Lower Price', 'Sale', 'Newest', 'Popularity'].map((option) => DropdownMenuItem(value: option, child: Text(option))).toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        TGridLayout(itemCount: 8, itemBuilder: (_,index) => ProductCardVertical()),
      ],
    );
  }
}
