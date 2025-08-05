import 'package:e_commerce_app/common/widget/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MySectionHeading(title: "Shipping Address", buttonTitle: 'Change', onPressed: (){}, showActionButton: true,),
        SizedBox(height: MySizes.spaceBetweenItems / 2,),

        Text('Coding with Iyke', style: Theme.of(context).textTheme.bodyLarge,),

        SizedBox(height: MySizes.spaceBetweenItems,),
        Row(
          children: [
            Icon(Icons.phone, color: Colors.grey, size: 16,),
            SizedBox(width: MySizes.spaceBetweenItems,),
            Text('+2347654890987'),
          ],
        ),

        SizedBox(height: MySizes.spaceBetweenItems,),

        Row(
          children: [
            Icon(Icons.location_history, color: Colors.grey, size: 16,),
            SizedBox(width: MySizes.spaceBetweenItems,),
            Text('South Liana, Manine 87676, USA', style: Theme.of(context).textTheme.bodyMedium, softWrap: true,),
          ],
        ),

      ],
    );
  }
}
