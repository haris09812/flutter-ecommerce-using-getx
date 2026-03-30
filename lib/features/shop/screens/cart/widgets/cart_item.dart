import 'package:Arccessory/common/widgets/texts/t_product_price_text.dart';
import 'package:Arccessory/features/shop/screens/cart/widgets/cart_menu_icon.dart';
import 'package:Arccessory/features/shop/screens/cart/widgets/product_quantity_with_add_remove.dart';
import 'package:Arccessory/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
class CartItems extends StatelessWidget {
  const CartItems({
    super.key, this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => SizedBox(height: TSizes.spaceBtwSections,),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          const CartItem(),
          if(showAddRemoveButtons) SizedBox(height: TSizes.spaceBtwItems,),
          /// Add, Remove Button Row with total price
          if(showAddRemoveButtons) Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  /// Extra Space
                  const SizedBox(width: 70,),

                  /// Add remove buttons
                  const ProductQuantityWithAddAndRemove(),
                ],
              ),

              /// --Product total Price
              TProductPriceText(price: '1999.0'),
            ],
          )
        ],
      ),
    );
  }
}
