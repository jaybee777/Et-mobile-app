import 'package:et_app/features/authentication/screens/forget_password/reset_password.dart';
import 'package:et_app/utils/constants/image_strings.dart';
import 'package:et_app/utils/constants/sizes.dart';
import 'package:et_app/utils/constants/text_strings.dart';
import 'package:et_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EtHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(EtSizes.defaultBwSections),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                    height: 180,
                    child: Image(
                        image: AssetImage(dark
                            ? EtImages.forgotPasswordImageDark
                            : EtImages.forgotPasswordImageLight))),
              ),
              SizedBox(
                height: EtSizes.smallSpacing,
              ),
              Text(
                EtTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: EtSizes.defaultBwItems,
              ),
              Text(
                EtTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: EtSizes.defaultBwItems,
              ),

              // Email TextField
              TextFormField(
                decoration: InputDecoration(
                    label: Text("Email"),
                    prefixIcon: Icon(Icons.email_outlined)),
              ),

              SizedBox(
                height: EtSizes.defaultBwItems * 1.5,
              ),
              // Submit Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => const ResetPassword()),
                      child: Text("Submit")))
            ],
          ),
        ),
      ),
    );
  }
}
