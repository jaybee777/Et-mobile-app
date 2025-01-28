import 'package:flutter/material.dart';

class EtAppBarTheme {
  EtAppBarTheme._();

  static const lightAppBartheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    iconTheme: IconThemeData(color: Colors.black, size: 24),
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24),
    titleTextStyle: TextStyle(
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
  );

  static const darkAppBartheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    iconTheme: IconThemeData(color: Colors.white, size: 24),
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    actionsIconTheme: IconThemeData(color: Colors.white, size: 24),
    titleTextStyle: TextStyle(
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
  );
}
