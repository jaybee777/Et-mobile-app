// import 'package:et_app/common/styles/spacing_styles.dart';
import 'package:et_app/common/widgets/success_screen/success_screen.dart';
import 'package:et_app/features/authentication/screens/login/login.dart';
import 'package:et_app/utils/constants/image_strings.dart';
import 'package:et_app/utils/constants/sizes.dart';
import 'package:et_app/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 22.0),
              child: IconButton(
                  onPressed: () => Get.offAll(() => const LoginScreen()),
                  icon: Icon(CupertinoIcons.clear)),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: EtSizes.defaultSpace,
                right: EtSizes.defaultSpace,
                bottom: EtSizes.defaultBwSections),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image(
                      height: 250,
                      width: 250,
                      image: AssetImage(EtImages.verifyEmailImage)),
                ),
                SizedBox(
                  height: EtSizes.defaultBwItems,
                ),
                Text(
                  EtTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(
                  height: EtSizes.smallSpacing,
                ),
                Text(
                  "jmdanjuma@gmail.com",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                SizedBox(
                  height: EtSizes.defaultBwItems,
                ),
                Text(
                  EtTexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                SizedBox(
                  height: EtSizes.defaultSpace,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () => Get.to(() => const SuccessScreen()),
                        child: Text("Continue"))),
                SizedBox(
                  height: EtSizes.defaultBwItems,
                ),
                SizedBox(
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () {}, child: Text("Resend Email")))
              ],
            ),
          ),
        ));
  }
}
