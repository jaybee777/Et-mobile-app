import 'package:et_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class EtCircularContainer extends StatelessWidget {
  const EtCircularContainer(
      {super.key,
      this.height = 400,
      this.width = 400,
      this.radius = 400,
      this.padding = 0,
      this.backgroundColor = EtColors.white,
      this.child});

  final double? height;
  final double radius;
  final double? width;
  final double padding;
  final Color backgroundColor;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(radius)),
      child: child,
    );
  }
}
