import 'package:Arccessory/common/widgets/appbar/appbar.dart';
import 'package:Arccessory/common/widgets/product/cart/cart_menu.dart';
import 'package:Arccessory/features/shop/screens/cart/cart.dart';
import 'package:Arccessory/utils/constants/colors.dart';
import 'package:Arccessory/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.grey)),
          Text(TTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white)),
        ],
      ),
      actions: [TCartCounterIcon(onPressed: () => Get.to(() => const CartScreen()), iconColor: TColors.white)],
    );
  }
}