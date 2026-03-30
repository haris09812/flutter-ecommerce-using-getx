import 'package:Arccessory/common/widgets/image_text/image_text_vertical.dart';
import 'package:Arccessory/features/shop/screens/categories/category.dart';
import 'package:Arccessory/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageAndText(
            image: TImages.earringIcon,
            title: "Earings",
            onTap: () => Get.to(() => const CategoryScreen()),
          );
        },
      ),
    );
  }
}