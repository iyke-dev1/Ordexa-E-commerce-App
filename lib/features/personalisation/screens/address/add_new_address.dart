import 'package:e_commerce_app/common/widget/appBar/app_bar.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text('Add New Address'),
      ),

      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: 'Name',
                  ),
                ),

                SizedBox(height: MySizes.spaceBtwInputField,),

                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.mobile),
                    labelText: 'Phone Number',
                  ),
                ),

                SizedBox(height: MySizes.spaceBtwInputField,),

                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.building_31),
                          labelText: 'Street ',
                        ),
                      ),
                    ),

                    SizedBox(width: MySizes.defaultSpace,),

                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.code),
                          labelText: 'Postal code ',
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: MySizes.spaceBtwInputField,),

                Row (
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.building),
                          labelText: 'City',
                        ),
                      ),
                    ),

                    SizedBox(width: MySizes.defaultSpace,),

                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Iconsax.activity),
                          labelText: 'State',
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: MySizes.spaceBtwInputField,),

                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.global),
                    labelText: 'Country',
                  ),
                ),

                SizedBox(height: MySizes.defaultSpace,),

                SizedBox(
                  width: double.infinity,
                    child: ElevatedButton(onPressed: (){}, child: Text('Save'))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
