import 'package:e_commerce_app/common/widget/common_shapes/containers/circular_container.dart';
import 'package:e_commerce_app/common/widget/products/ratings/rating_indicator.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage(MyImage.userImage)),
                SizedBox(width: MySizes.spaceBetweenItems),

                Text(
                  'John Doe',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),

            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        SizedBox(height: MySizes.spaceBetweenItems),

        /// -- Review
        Row(
          children: [
            MyRatingBarIndicator(rating: 4.0),
            SizedBox(width: MySizes.spaceBetweenItems),
            Text('01 Nov, 2025', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),

        SizedBox(height: MySizes.spaceBetweenItems),
        ReadMoreText(
          'The user interface of the app is quite intuitive. i was  able to navigate and make purchase seamlessly, great job!.',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Show Less',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: MyColor.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: MyColor.primary),
        ),

        SizedBox(height: MySizes.spaceBetweenItems,),

        MyCircularContainer(
          backgroundColor: dark ? MyColor.darkerGrey : MyColor.grey,
          child: Padding(
              padding: EdgeInsets.all(MySizes.md),
            child: Column(
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("iyke's Store", style: Theme.of(context).textTheme.bodyMedium,),
                  Text("02 Nov, 2025", style: Theme.of(context).textTheme.bodyMedium,),
                ],
              ),
                SizedBox(height: MySizes.spaceBetweenItems),
                ReadMoreText(
                  'The user interface of the app is quite intuitive. i was  able to navigate and make purchase seamlessly, great job!.',
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' Show more',
                  trimExpandedText: ' Show Less',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: MyColor.primary),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: MyColor.primary),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: MySizes.spaceBtwSections,),
      ],
    );
  }
}
