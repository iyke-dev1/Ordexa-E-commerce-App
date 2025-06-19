import 'package:flutter/material.dart';
import '../../../../../common/widget/image_text_widgets/vertical_Image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return VerticalImageText(image: MyImage.shoeIcon, title: 'shoes', onTap: (){},);
        },
      ),
    );
  }
}
