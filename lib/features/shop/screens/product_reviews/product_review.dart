import 'package:Arccessory/common/widgets/appbar/appbar.dart';
import 'package:Arccessory/features/shop/screens/product_reviews/widgets/overall_product_rating.dart';
import 'package:Arccessory/features/shop/screens/product_reviews/widgets/rating_bar_indicator.dart';
import 'package:Arccessory/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:Arccessory/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// ---Appbar
      appBar: TAppBar(title: Text('Reviews & Ratings'), showBackArrow: true,),

      /// ---Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Ratings and Reviews are verified and are from people who use the same type of device  that you use."),
              const SizedBox(height: TSizes.spaceBtwItems,),

              /// ---Overall Product Rating
              const OverallProductRating(),
              const TRatingBarIndicator(rating: 4.3,),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// User Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}




