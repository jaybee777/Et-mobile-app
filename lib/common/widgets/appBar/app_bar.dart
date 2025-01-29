import 'package:et_app/utils/constants/sizes.dart';
import 'package:et_app/utils/device/device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EtAppBar extends StatelessWidget implements PreferredSizeWidget {
  const EtAppBar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.actions,
      this.leading,
      this.leadingIcon,
      this.leadingOnPressed});
  final Widget? title;
  final bool showBackArrow;
  final List<Widget>? actions;
  final Widget? leading;
  final IconData? leadingIcon;
  final VoidCallback? leadingOnPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: EtSizes.smallSpacing),
      child: AppBar(
        title: title,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                icon: Icon(CupertinoIcons.arrow_left),
                onPressed: () => Get.back(),
              )
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed, icon: Icon(leadingIcon))
                : null,
        actions: actions,
        elevation: 0,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(EtDeviceUtils.getAppBarHeight());
}
