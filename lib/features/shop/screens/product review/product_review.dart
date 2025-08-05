import 'package:e_commerce_app/common/widget/appBar/app_bar.dart';
import 'package:e_commerce_app/features/shop/screens/product%20review/widgets/rating_progress_indicator.dart';
import 'package:e_commerce_app/features/shop/screens/product%20review/widgets/user_review_card.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widget/products/ratings/rating_indicator.dart';

class ProductReview extends StatelessWidget {
  const ProductReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Review & Ratings'),
        showBackArrow: true,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(MySizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('Rating and Reviews are verified and are from people who use the same type of device that you use.'),
          SizedBox(height: MySizes.spaceBtwSections,),
          /// -- Overall Product rating
            MyOverallProductRating(),
            MyRatingBarIndicator(rating: 3.5,),
            Text('12,611', style: Theme.of(context).textTheme.bodySmall,),
            SizedBox(height: MySizes.spaceBetweenItems,),

            UserReviewCard(),
            UserReviewCard(),

          ],
        ),
      ),
    );
  }
}



