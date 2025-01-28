import 'package:et_app/common/widgets/login_signup/form_divider.dart';
import 'package:et_app/common/widgets/login_signup/social_buttons.dart';
import 'package:et_app/features/authentication/screens/signup/email_verification.dart';
import 'package:et_app/utils/constants/colors.dart';
import 'package:et_app/utils/constants/sizes.dart';
import 'package:et_app/utils/constants/text_strings.dart';
import 'package:et_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EtHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: EtSizes.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Form Header
              SizedBox(
                height: EtSizes.smallSpacing,
              ),
              Text(
                EtTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(
                height: EtSizes.defaultBwSections,
              ),

              // Form
              Form(
                  child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: InputDecoration(
                            label: Text("First name"),
                            prefixIcon: Icon(Icons.person_outline_outlined),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: EtSizes.smallSpacing,
                      ),
                      Expanded(
                        child: TextFormField(
                            expands: false,
                            decoration: InputDecoration(
                              label: Text("Last name"),
                              prefixIcon: Icon(Icons.person_outline_outlined),
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: EtSizes.spaceBtwInputFields,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("Username"),
                      prefixIcon: Icon(Iconsax.personalcard),
                    ),
                  ),
                  SizedBox(
                    height: EtSizes.spaceBtwInputFields,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("Email"),
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                  ),
                  SizedBox(
                    height: EtSizes.spaceBtwInputFields,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("Phone Number"),
                      prefixIcon: Icon(Icons.phone),
                    ),
                  ),
                  SizedBox(
                    height: EtSizes.spaceBtwInputFields,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("Password"),
                      prefixIcon: Icon(Iconsax.password_check),
                      suffixIcon: Icon(Iconsax.eye_slash),
                    ),
                  ),
                  SizedBox(
                    height: EtSizes.smallSpacing,
                  ),
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: "I agree to ",
                            style: Theme.of(context).textTheme.labelSmall),
                        TextSpan(
                            text: "Privacy Policy",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .apply(
                                    decoration: TextDecoration.underline,
                                    decorationColor:
                                        dark ? EtColors.white : EtColors.black,
                                    color: dark
                                        ? EtColors.white
                                        : EtColors.black)),
                        TextSpan(
                            text: "and",
                            style: Theme.of(context).textTheme.labelSmall),
                        TextSpan(
                            text: "Terms of use",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .apply(
                                    decoration: TextDecoration.underline,
                                    decorationColor:
                                        dark ? EtColors.white : EtColors.black,
                                    color:
                                        dark ? EtColors.white : EtColors.black))
                      ]))
                    ],
                  ),
                  SizedBox(
                    height: EtSizes.defaultSpace,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () =>
                            Get.to(() => const EmailVerification()),
                        child: Text("Create Account")),
                  ),
                  SizedBox(
                    height: EtSizes.defaultSpace,
                  ),

                  // Divider
                  EtFormDivider(deviderText: "Or Sign In With"),
                  SizedBox(
                    height: EtSizes.defaultBwItems,
                  ),
                  SocialButtons()
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
