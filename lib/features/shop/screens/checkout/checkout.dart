import 'package:e_commerce_app/common/widget/common_shapes/containers/circular_container.dart';
import 'package:e_commerce_app/common/widget/success_screen/success_screen.dart';
import 'package:e_commerce_app/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/billing_amout_section.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_commerce_app/navigation_menu.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widget/appBar/app_bar.dart';
import '../../../../common/widget/products/carts/coupon_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// -- items in cart
              MyCartItem(showAddRemoveButtons: false,),
              SizedBox(height: MySizes.spaceBtwSections,),

              /// -- Coupon textField
              MyCouponCode(),
              SizedBox(height: MySizes.spaceBtwSections,),

              /// -- Billing Section
              MyCircularContainer(
                showBorder: true,
                padding: EdgeInsets.all(MySizes.md),
                backgroundColor: dark ? MyColor.black : MyColor.white,
                child: Column(
                  children: [
                    /// -- Pricing
                    BillingAmountSection(),
                    SizedBox(height: MySizes.spaceBetweenItems,),

                    /// -- Divider
                    Divider(),
                    SizedBox(height: MySizes.spaceBetweenItems,),

                    /// -- Payment Method
                    BillingPaymentSection(),
                    SizedBox(height: MySizes.spaceBetweenItems,),


                    /// -- Address
                    BillingAddressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      /// -- Checkout Button
    bottomNavigationBar: Padding(
    padding: const EdgeInsets.all(MySizes.defaultSpace),
    child: ElevatedButton(
    onPressed: () => Get.to(() => SuccessScreen(
        image: MyImage.success,
        title: 'Payment Success',
        subTitle: 'Your item will be shipped soon!',
        onPressed: ()=> Get.offAll(()=> NavigationMenu()),
    )),
    child: Text('\$256'),
    ),
    ),
    );
  }
}

