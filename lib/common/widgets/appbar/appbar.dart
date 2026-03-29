import 'package:Arccessory/utils/constants/sizes.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../styles/spacing_styles.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const  TAppBar({
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnPressed,
    this.showBackArrow = false,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading:
            showBackArrow
                ? IconButton(onPressed: () => Get.back(), icon: Icon(Iconsax.arrow_left, color: dark ? TColors.white : TColors.dark))
                : leadingIcon != null
                ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon, color: dark ? TColors.white : TColors.dark))
                : null,
        title: title,
        actions: actions
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}

//
// showSkipButton
// ? [
// OutlinedButton(
// onPressed: () {},
// style: OutlinedButton.styleFrom(padding: const EdgeInsets.all(6), textStyle: Theme.of(context).textTheme.bodySmall),
// child: const Text(TTexts.skip),
// ),
// ]
//     : showActions
// ? (actions != null)
// ? actions
//     : [
// showActionWithBadge
// ? badges.Badge(
// position: badges.BadgePosition.topEnd(top: 0, end: 0),
// badgeStyle: const badges.BadgeStyle(badgeColor: TColors.primary),
// // badgeContent: Obx(() => Text(controller.cartItems.length.toString(), style: const TextStyle(color: Colors.black))),
// child: IconButton(onPressed: actionOnPressed, icon: Icon(actionIcon, color: dark ? TColors.white : TColors.dark)),
// )
//     : IconButton(onPressed: actionOnPressed, icon: Icon(actionIcon, color: dark ? TColors.white : TColors.dark)),
// ]
// : null,