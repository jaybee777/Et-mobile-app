import 'package:et_app/features/authentication/screens/login/login.dart';
// import 'package:et_app/common/widgets/success_screen/success_screen.dart';
import 'package:et_app/utils/constants/image_strings.dart';
import 'package:et_app/utils/constants/sizes.dart';
import 'package:et_app/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(EtSizes.defaultSpace),
        child: Column(
          children: [
            SizedBox(
                height: 180,
                child: Image(image: AssetImage(EtImages.successImage))),
            SizedBox(
              height: EtSizes.defaultBwSections,
            ),
            Text(
              EtTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(
              height: EtSizes.defaultBwItems,
            ),
            Text(EtTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium),
            SizedBox(
              height: EtSizes.defaultSpace,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.off(() => LoginScreen()),
                    child: Text("Done")))
          ],
        ),
      ),
    );
  }
}

// class ResetPassword extends StatelessWidget {
//   const ResetPassword({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SuccessScreen();
//   }
// }
