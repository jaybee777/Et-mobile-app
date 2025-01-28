import 'package:et_app/bottom_menu.dart';
import 'package:et_app/common/styles/spacing_styles.dart';
import 'package:et_app/common/widgets/login_signup/form_divider.dart';
import 'package:et_app/features/authentication/screens/forget_password/forgot_password.dart';
import 'package:et_app/features/authentication/screens/signup/signup.dart';
import 'package:et_app/utils/constants/image_strings.dart';
import 'package:et_app/utils/constants/sizes.dart';
import 'package:et_app/utils/constants/text_strings.dart';
import 'package:et_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/login_signup/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EtHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EtSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // PAGE HEADER
                  Image.asset(
                    dark ? EtImages.darkAppLogo : EtImages.lightAppLogo,
                    height: 80,
                    width: 80,
                  ),
                  Text(EtTexts.loginTitle,
                      style: Theme.of(context).textTheme.titleLarge),
                  Text(
                    EtTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  SizedBox(
                    height: EtSizes.defaultBwSections * 1.5,
                  ),

                  // FORM
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Form(
                          child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email_outlined),
                                labelText: "Email"),
                          ),
                          SizedBox(
                            height: EtSizes.spaceBtwInputFields,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                suffixIcon: Icon(Iconsax.eye_slash),
                                prefixIcon: Icon(Iconsax.password_check),
                                labelText: "Password"),
                          ),
                        ],
                      )),
                    ],
                  ),

                  // Remember Me and Forgot Password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      Text("Remember Me"),
                      SizedBox(width: 4.0),
                      TextButton(
                        onPressed: () => Get.to(() => const ForgotPassword()),
                        child: Text("Forgot Password?"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: EtSizes.defaultBwSections,
                  ),

                  // Buttons

                  // signup Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () => Get.to(() => const BottomMenu()),
                          child: Text("Sign In"))),
                  SizedBox(
                    height: EtSizes.defaultBwItems,
                  ),

                  // create Account button
                  SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () => Get.to(() => const SignupScreen()),
                          child: Text("Create Account"))),

                  SizedBox(
                    height: EtSizes.defaultBwSections,
                  ),

                  // sign in with socials
                  EtFormDivider(
                    deviderText: "or Sign in with",
                  ),
                  SizedBox(
                    height: EtSizes.smallSpacing,
                  ),
                  SocialButtons(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
