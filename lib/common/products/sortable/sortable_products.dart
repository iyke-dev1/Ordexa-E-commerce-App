import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constants/sizes.dart';
import '../../widget/layout/grid_layout.dart';
import '../../widget/products/product_cards/products_cards_vertical.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// -- DropDown
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items:
          [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sales',
            'Newest',
            'Popularity',
          ]
              .map(
                (options) => DropdownMenuItem(
                value: options,
                child: Text(options)
            ),
          )
              .toList(),
        ),
        SizedBox(height: MySizes.spaceBtwSections,),

        /// -- Products
        MyGridLayout(itemCount: 8, itemBuilder: (_, index)=> ProductsCardsVertical())
      ],
    );
  }
}
