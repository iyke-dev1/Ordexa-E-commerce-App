import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/user/user.jpeg'),
      ),
      title: Text(
        'John Doe',
        style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),
      ),

      subtitle: Text(
        'Support@iyke.com',
        style: Theme.of(context).textTheme.bodyLarge!.apply(color: Colors.white),
      ),
      trailing: IconButton(onPressed: (){}, icon: Icon(Iconsax.edit, color: Colors.white,)),
    );
  }
}
