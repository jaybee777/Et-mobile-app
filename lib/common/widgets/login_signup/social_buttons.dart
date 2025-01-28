import 'package:et_app/utils/constants/colors.dart';
import 'package:et_app/utils/constants/image_strings.dart';
import 'package:et_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: EtColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: Image(
                  width: EtSizes.iconLg,
                  height: EtSizes.iconLg,
                  image: AssetImage(EtImages.google))),
        ),
        SizedBox(
          width: EtSizes.defaultBwItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: EtColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: Image(
                  width: EtSizes.iconLg,
                  height: EtSizes.iconLg,
                  image: AssetImage(EtImages.google))),
        ),
      ],
    );
  }
}
