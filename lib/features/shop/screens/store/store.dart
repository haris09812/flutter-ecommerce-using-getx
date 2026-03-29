import 'package:Arccessory/common/widgets/appbar/appbar.dart';
import 'package:Arccessory/common/widgets/appbar/tab_bar.dart';
import 'package:Arccessory/common/widgets/layouts/grid_layout.dart';
import 'package:Arccessory/common/widgets/product/cart/cart_menu.dart';
import 'package:Arccessory/common/widgets/texts/section_heading.dart';
import 'package:Arccessory/features/shop/screens/home/widgets/search_bar.dart';
import 'package:Arccessory/common/widgets/brand/brand_card.dart';
import 'package:Arccessory/features/shop/screens/store/widgets/category_tab.dart';
import 'package:Arccessory/utils/constants/colors.dart';
import 'package:Arccessory/utils/constants/sizes.dart';
import 'package:Arccessory/utils/helpers/exports.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [TCartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScroll) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor:
                    THelperFunctions.isDarkMode(context)
                        ? TColors.black
                        : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      /// Search Bar
                      SizedBox(height: TSizes.spaceBtwItems),
                      SearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(height: TSizes.spaceBtwSections),

                      /// Featured Brand
                      TSectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                      ),
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return BrandCard(showBorder: true);
                        },
                      ),
                    ],
                  ),
                ),

                /// Tabs
                bottom: TTabBar(
                  tabs: [
                    Tab(child: Text('Earings')),
                    Tab(child: Text('Rings')),
                    Tab(child: Text('Watch')),
                    Tab(child: Text('Bracelets')),
                    Tab(child: Text('Neckless')),
                  ],
                ),
              ),
            ];
          },

          /// Body
          body: TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
