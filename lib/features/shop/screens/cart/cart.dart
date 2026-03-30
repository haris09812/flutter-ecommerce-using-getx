import 'package:Arccessory/common/widgets/appbar/appbar.dart';
import 'package:Arccessory/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:Arccessory/features/shop/screens/checkout/checkout.dart';
import 'package:Arccessory/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall,),),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: CartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: ()=> Get.to(() => const CheckoutScreen()), child: Text('Checkout Rs. 1999.0')),
      ),
    );
  }
}



