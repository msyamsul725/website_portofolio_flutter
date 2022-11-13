import 'package:flutter/material.dart';
import 'dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  final Widget tabletBody;

  const ResponsiveLayout({
    required this.mobileBody,
    required this.desktopBody,
    required this.tabletBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileBody;
        }
        if (constraints.maxWidth < tabletWidth) {
          return tabletBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
