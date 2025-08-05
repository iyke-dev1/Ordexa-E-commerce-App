import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// -- subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyLarge,),
            Text('256.0', style: Theme.of(context).textTheme.bodyLarge,),
          ],
        ),

        SizedBox(height: MySizes.spaceBetweenItems / 2,),

        /// -- Shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyLarge,),
            Text('6.0', style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),

        SizedBox(height: MySizes.spaceBetweenItems / 2,),

        /// -- Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyLarge,),
            Text('6.0', style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),

        SizedBox(height: MySizes.spaceBetweenItems / 2,),

        /// -- Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyLarge,),
            Text('6.0', style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
      ],
    );
  }
}

