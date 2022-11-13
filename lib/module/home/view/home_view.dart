import 'package:flutter/material.dart';

import '../../responsive/desktop/view/desktop.dart';
import '../../responsive/mobile/view/mobile_body.dart';
import '../../responsive/responsive_layout.dart';
import '../../responsive/tablet/view/tablet_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ResponsiveLayout(
      mobileBody: MyMobileBody(),
      desktopBody: MyWebBody(),
      tabletBody: MyTabletBody(),
    ));
  }
}
