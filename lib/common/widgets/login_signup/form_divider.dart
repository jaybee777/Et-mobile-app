import 'package:et_app/utils/constants/colors.dart';
import 'package:et_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EtFormDivider extends StatelessWidget {
  const EtFormDivider({
    super.key,
    required this.deviderText,
  });

  final String deviderText;
  @override
  Widget build(BuildContext context) {
    final dark = EtHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? EtColors.darkgrey : EtColors.grey,
            thickness: 0.5,
            indent: 35,
            endIndent: 5,
          ),
        ),
        Text(
          deviderText,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        Flexible(
          child: Divider(
            color: dark ? EtColors.darkgrey : EtColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 35,
          ),
        )
      ],
    );
  }
}
