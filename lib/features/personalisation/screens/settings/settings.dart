import 'package:e_commerce_app/common/list_tiles/settings_menu_tile.dart';
import 'package:e_commerce_app/common/widget/appBar/app_bar.dart';
import 'package:e_commerce_app/common/widget/common_shapes/containers/primary_header_container.dart';
import 'package:e_commerce_app/common/widget/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/list_tiles/user_profile_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// -- Header
            MyPrimaryHeaderContainer(
              child: Column(
                children: [
                  MyAppBar(
                    title: Text(
                      'Accounts',
                      style: Theme
                          .of(
                        context,
                      )
                          .textTheme
                          .titleLarge!
                          .apply(color: Colors.white),
                    ),
                  ),


                  /// -- user Profile card
                  UserProfileTile(),
                  SizedBox(height: MySizes.spaceBtwSections,),

                ],
              ),
            ),

            /// -- body
            Padding(
              padding: EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [

                  /// Account Setting
                  MySectionHeading(
                    title: 'Account Settings', showActionButton: false,),
                  SizedBox(height: MySizes.spaceBetweenItems,),


                  SettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'set shopping delivery address',
                    onTap: () {},
                  ),


                  SettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add, remove Products and Move to checkout',
                    onTap: () {},
                  ),

                  SettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'In-progress and Completed Orders',
                    onTap: () {},
                  ),

                  SettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Banking Accounts',
                    subtitle: 'Withdraw balance to registered bank account',
                    onTap: () {},
                  ),

                  SettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'List of all the discounted coupons',
                    onTap: () {},
                  ),

                  SettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subtitle: 'Set any kind of notifications',
                    onTap: () {},
                  ),

                  SettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subtitle: 'Manage data usage and connected accounts',
                    onTap: () {},
                  ),


                  /// -- App Settings
                  SizedBox(height: MySizes.spaceBtwSections,),
                  MySectionHeading(
                    title: 'App Settings', showActionButton: false,),
                  SizedBox(height: MySizes.spaceBetweenItems,),

                  SettingsMenuTile(icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subtitle: 'Upload data to your Cloud firestore'),
                  SettingsMenuTile(
                      icon: Iconsax.location,
                      title: 'Geolocation',
                      subtitle: 'Set recommendation based on location',
                      trailing: Switch(value: true, onChanged: (value){}),
                  ),
                  SettingsMenuTile(icon: Iconsax.security_user,
                      title: 'Safe Mode',
                      subtitle: 'Search result is safe for all ages',
                      trailing: Switch(value: true, onChanged: (value){}),
            ),
                  SettingsMenuTile(icon: Iconsax.image,
                      title: 'HD Image Quality',
                      subtitle: 'Upload data to your Cloud firestore',
                      trailing: Switch(value: true, onChanged: (value){}),
                  ),

                  /// -- Logout button
                  SizedBox(height: MySizes.spaceBtwSections,),
                   SizedBox(
                     width: double.infinity,
                     child: ElevatedButton(
                       onPressed: (){},
                       child: Text('Logout'),
                     ),
                   ),
                  SizedBox(height: MySizes.spaceBetweenItems,),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

