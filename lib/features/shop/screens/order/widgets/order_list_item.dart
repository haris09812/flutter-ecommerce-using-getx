import 'package:Arccessory/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:Arccessory/utils/constants/colors.dart';
import 'package:Arccessory/utils/constants/sizes.dart';
import 'package:Arccessory/utils/helpers/exports.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class OrderListItem extends StatelessWidget {
  const OrderListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 3,
      separatorBuilder: (_, __) => SizedBox(height: TSizes.spaceBtwItems,),
      itemBuilder: (_, index) => TRoundedContainer(
        showBorder: true,
        padding: EdgeInsets.all(TSizes.md),
        backgroundColor: dark ? TColors.dark : TColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Row 1
            Row(
              children: [
                /// icon 1
                Icon(Iconsax.ship),
                SizedBox(width: TSizes.spaceBtwItems / 2,),

                /// Status & date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary, fontSizeDelta: 1),
                      ),
                      Text('07 Nov, 2025', style: Theme.of(context).textTheme.headlineSmall,),
                    ],
                  ),
                ),

                /// Icon
                IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_34, size: TSizes.iconSm,))
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems,),
            /// Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      /// icon 1
                      Icon(Iconsax.tag),
                      SizedBox(width: TSizes.spaceBtwItems / 2,),

                      /// Status & date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Text('[#00921]', style: Theme.of(context).textTheme.titleMedium,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      /// icon 1
                      Icon(Iconsax.calendar),
                      SizedBox(width: TSizes.spaceBtwItems / 2,),

                      /// Status & date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipping Date',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Text('07 Dec, 2025', style: Theme.of(context).textTheme.titleMedium,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
