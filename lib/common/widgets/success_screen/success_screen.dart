// import 'package:et_app/common/styles/spacing_styles.dart';
import 'package:et_app/utils/constants/image_strings.dart';
import 'package:et_app/utils/constants/sizes.dart';
import 'package:et_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: EtSizes.defaultSpace,
            right: EtSizes.defaultSpace,
            top: EtSizes.defaultBwSections,
            bottom: EtSizes.defaultBwSections),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: 250,
                child: Image(image: AssetImage(EtImages.successImage))),
            SizedBox(height: EtSizes.defaultSpace),
            Text(
              EtTexts.yourAccountCreatedTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(
              height: EtSizes.defaultBwItems,
            ),
            Text(
              EtTexts.yourAccountCreatedSubTitle,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            SizedBox(
              height: EtSizes.defaultBwSections,
            ),
            SizedBox(
                width: double.infinity,
                child:
                    ElevatedButton(onPressed: () {}, child: Text("Continue")))
          ],
        ),
      ),
    );
  }
}
