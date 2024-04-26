import 'package:flutter/material.dart';

class AppDimensions {
  static const EdgeInsets padding20 = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets padding10 = EdgeInsets.symmetric(horizontal: 10);
  static const EdgeInsets allPadding15 = EdgeInsets.all(10);
  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static void navigateScreen(BuildContext context, Widget screenName) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return screenName;
        },
      ),
    );
  }
}
