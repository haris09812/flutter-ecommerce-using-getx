import 'package:Arccessory/common/widgets/appbar/appbar.dart';
import 'package:Arccessory/common/widgets/texts/t_product_price_text.dart';
import 'package:Arccessory/features/shop/screens/cart/widgets/cart_menu_icon.dart';
import 'package:Arccessory/features/shop/screens/cart/widgets/product_quantity_with_add_remove.dart';
import 'package:Arccessory/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall,),),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (_, __) => SizedBox(height: TSizes.spaceBtwSections,),
          itemCount: 10,
          itemBuilder: (_, index) => Column(
            children: [
              const CartItem(),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Row(
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
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){}, child: Text('Checkout Rs. 1999.0')),
      ),
    );
  }
}


