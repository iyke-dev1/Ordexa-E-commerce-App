import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../images/circular_images.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircularImage(
        fit: BoxFit.cover,
        image: MyImage.userImage,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'John Doe',
        style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),
      ),

      subtitle: Text(
        'Support@iyke.com',
        style: Theme.of(context).textTheme.bodyLarge!.apply(color: Colors.white),
      ),
      trailing: IconButton(onPressed: onPressed, icon: Icon(Iconsax.edit, color: Colors.white,)),
    );
  }
}
