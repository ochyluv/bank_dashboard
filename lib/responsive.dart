import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // If the width of the screen is more than 1100 then it is a desktop
    if (_size.width >= 1100) {
      return desktop;
    }
    // If the width of the screen it less then 1100 and more then 850 it is a tablet
    else if (_size.width >= 850 && tablet != null) {
      return tablet!;
    }
    // if less then it's a mobile
    else {
      return mobile;
    }
  }
}
