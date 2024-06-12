import 'package:flutter/material.dart';
import 'configs.dart';

class App {
  // static bool? isLtr;
  // static bool showAds = false;

  static init(BuildContext context) {
    Space.init();
    AppText.init();
    // isLtr = Directionality.of(context) == TextDirection.ltr;
  }
}
