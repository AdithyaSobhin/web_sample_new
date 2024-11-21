import 'package:flutter/material.dart';

class Responsive {
  static bool isMobile(BuildContext context) {
    return MediaQuery.sizeOf(context).width <= 480;
  }

  static bool isTab(BuildContext context) {
    return MediaQuery.sizeOf(context).width > 480 &&
        MediaQuery.sizeOf(context).width <= 770;
  }

  static bool isLaptop(BuildContext context) {
    return MediaQuery.sizeOf(context).width > 770 &&
        MediaQuery.sizeOf(context).width <= 1280;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.sizeOf(context).width > 1280;
  }

  static bool isLarge(BuildContext context) {
    return MediaQuery.sizeOf(context).width > 770;
  }

  static bool isSmall(BuildContext context) {
    return MediaQuery.sizeOf(context).width <= 770;
  }
}
