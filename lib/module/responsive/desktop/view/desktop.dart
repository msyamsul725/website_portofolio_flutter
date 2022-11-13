import 'package:flutter/material.dart';

import '../reaseable_widget/app_bar_desktop.dart';
import '../reaseable_widget/bg_app_bar_desktop.dart';
import '../reaseable_widget/contact_desktop.dart';
import '../reaseable_widget/header_project_desktop.dart';
import '../reaseable_widget/home_desktop.dart';
import '../reaseable_widget/project_dekstop.dart';
import '../reaseable_widget/project_desktopb.dart';
import '../reaseable_widget/service_desktop.dart.dart';
import '../reaseable_widget/technologi_desktop.dart';

class MyWebBody extends StatefulWidget {
  const MyWebBody({Key? key}) : super(key: key);

  @override
  State<MyWebBody> createState() => _MyState();
}

class _MyState extends State<MyWebBody> {
  final List<GlobalKey> categorias = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey()
  ];
  BuildContext? tabContext;

  ScrollController? _controller;
  double pixels = 0.0;
  @override
  void initState() {
    super.initState();

    _controller = ScrollController();
    _controller!.addListener(() {
      setState(() {
        pixels = _controller!.position.pixels;
        print(_controller!.position.pixels);
      });
    });
  }

  changeTabs() {
    late RenderBox box;

    for (var i = 0; i < categorias.length; i++) {
      box = categorias[i].currentContext!.findRenderObject() as RenderBox;
      Offset position = box.localToGlobal(Offset.zero);

      if (_controller!.offset >= position.dy) {
        DefaultTabController.of(tabContext!)!.animateTo(
          i,
          duration: const Duration(milliseconds: 100),
        );
      }
    }
  }

  scrollTo(int index) async {
    _controller!.removeListener(changeTabs);
    final categoria = categorias[index].currentContext!;
    await Scrollable.ensureVisible(
      categoria,
      duration: const Duration(milliseconds: 600),
    );
    _controller!.addListener(changeTabs);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Builder(builder: (BuildContext context) {
        tabContext = context;
        return Scaffold(
          appBar: AppBar(
              flexibleSpace: const BGAppBarDesktop(),
              title: SMAppBarDesktop(
                scroll: scrollTo,
              )),
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: SingleChildScrollView(
              controller: _controller,
              child: Column(
                children: [
                  SMHome(categorias: categorias, index: 0),
                  SMServiceDekstop(
                      categorias: categorias, index: 1, pixels: pixels),
                  const HeaderProjectDesktop(),
                  SMProjectDesktop(
                      categorias: categorias, index: 2, pixels: pixels),
                  ProjectDesktopB(pixels: pixels),
                  TechDesktop(pixels: pixels),
                  ContactDesktop(
                      categorias: categorias, index: 3, pixels: pixels)
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
