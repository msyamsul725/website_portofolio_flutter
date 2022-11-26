import 'package:fhe_template/module/home/view/home_view.dart';
import 'package:fhe_template/setup.dart';
import 'package:fhe_template/state_util.dart';
import 'package:flutter/material.dart';

void main() async {
  await initialize();

  Widget mainView = const HomeView();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.navigatorKey,
      title: 'Portofolio',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: mainView,
    ),
  );
}
