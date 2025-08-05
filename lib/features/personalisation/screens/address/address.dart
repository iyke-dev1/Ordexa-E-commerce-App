import 'package:e_commerce_app/common/widget/appBar/app_bar.dart';
import 'package:e_commerce_app/features/personalisation/screens/address/widgets/single_address.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'add_new_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColor.primary,
        onPressed: ()=> Get.to(()=> AddNewAddressScreen()),
        child: Icon(Iconsax.add, color: MyColor.white,),
      ),

      appBar: MyAppBar(
        showBackArrow: true,
        title: Text('Addresses'),
      ),

      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              SingleAddress(selectedAddress: false,),
              SingleAddress(selectedAddress: true,),
            ],
          ),
        ),
      ),
    );
  }
}
