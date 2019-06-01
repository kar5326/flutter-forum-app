import 'package:flutter/material.dart';

class AppColorsTheme {
  Color primarySwatch;
  Color titleBarGradientStartColor;
  Color titleBarGradientEndColor;
  Color textColor;
  Color secondaryGradientColor;

  AppColorsTheme({this.primarySwatch, this.titleBarGradientStartColor, this.titleBarGradientEndColor, this.textColor, this.secondaryGradientColor});

  static final AppColorsTheme myTheme = new AppColorsTheme(
    primarySwatch: Colors.blue,
    titleBarGradientStartColor : Colors.blue,
    titleBarGradientEndColor: Colors.tealAccent,
    textColor: Colors.black,
    secondaryGradientColor: Colors.grey[300]
  );
  
}