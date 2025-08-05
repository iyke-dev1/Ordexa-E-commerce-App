import 'package:e_commerce_app/common/images/circular_images.dart';
import 'package:e_commerce_app/common/widget/appBar/app_bar.dart';
import 'package:e_commerce_app/common/widget/texts/section_heading.dart';
import 'package:e_commerce_app/features/personalisation/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      /// body
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(MySizes.defaultSpace), 
        child: SizedBox(
          width: double.infinity,
          child: Column(
              children: [
                /// profile Picture
                CircularImage(image: MyImage.userImage, height: 80, width: 80,),
                TextButton(onPressed: (){}, child: Text('Change Profile Picture')),


                /// dettail
                SizedBox(height: MySizes.spaceBetweenItems,),
                Divider(),
                SizedBox(height: MySizes.spaceBetweenItems,),

                MySectionHeading(title: 'Profile information', showActionButton: false,),
                SizedBox(height: MySizes.spaceBetweenItems,),

                ProfileMenu( title: 'Name', value: 'iyke',onPressed: () {  }),
                ProfileMenu( title: 'userName', value: 'iyke001',onPressed: () {  }),


                SizedBox(height: MySizes.spaceBetweenItems,),
                Divider(),
                SizedBox(height: MySizes.spaceBetweenItems,),

                /// Heading Personal information
                MySectionHeading(title: 'Personal information', showActionButton: false,),
                SizedBox(height: MySizes.spaceBetweenItems,),

                ProfileMenu( title: 'User ID', value: '987678',onPressed: () {  }),
                ProfileMenu( title: 'E-mail', value: 'ezecletus@gmail.com',onPressed: () {  }),
                ProfileMenu( title: 'Phone Number', value: '+2347040522310',onPressed: () {  }),
                ProfileMenu( title: 'Gender', value: 'male',onPressed: () {  }),
                ProfileMenu( title: 'Date of Birth', value: '10 Oct, 2000',onPressed: () {  }),

                Divider(),
                SizedBox(height: MySizes.spaceBetweenItems,),

                Center(
                  child: TextButton(
                      onPressed: (){},
                      child: Text('Close Account', style: TextStyle(color: Colors.red),)
                  ),
                )


            ],
          ),
        ),
        ),
      ),
    );
  }
}

