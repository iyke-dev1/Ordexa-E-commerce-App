import 'package:flutter/material.dart';
import '../../../../../common/widget/products/carts/add_remove_button.dart';
import '../../../../../common/widget/products/carts/cart_item.dart';
import '../../../../../common/widget/products/product_cards/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class MyCartItem extends StatelessWidget {
  const MyCartItem({
    super.key,
    this.showAddRemoveButtons = true,
  });

   final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, __) => SizedBox(height: MySizes.spaceBtwSections),
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (_, index)=>   Column(
        children: [
          /// -- Cart Items
          CartItem(),
          if (showAddRemoveButtons) SizedBox(height: MySizes.spaceBetweenItems,),

          /// -- Add Remove Button Row With Total Price
          if (showAddRemoveButtons)
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  /// -- Extra Space
                  SizedBox(width: 70,),


                  /// -- Add Remove Buttons
                  MyProductQuantityWithAddAndRemoveButton(),

                ],
              ),
              ProductPriceText(price: '256'),
            ],
          )
        ],
      ),

    );
  }
}
