import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../drawer.dart';
import '../reauseable_tablet/contact_tablet.dart';
import '../reauseable_tablet/header_tablet.dart';
import '../reauseable_tablet/home_tablet.dart';
import '../reauseable_tablet/projectA_tablet.dart';
import '../reauseable_tablet/project_tabletb.dart';
import '../reauseable_tablet/service_tablet.dart';
import '../reauseable_tablet/tecnology_tablet.dart';

class MyTabletBody extends StatefulWidget {
  const MyTabletBody({Key? key}) : super(key: key);

  @override
  State<MyTabletBody> createState() => _MyTabletBodyState();
}

class _MyTabletBodyState extends State<MyTabletBody> {
  final List<GlobalKey> category = [
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

    for (var i = 0; i < category.length; i++) {
      box = category[i].currentContext!.findRenderObject() as RenderBox;
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
    final categoria = category[index].currentContext!;
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
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.green,
                  Colors.blue,
                ],
              )),
            ),
            title: SizedBox(
              height: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.favorite_rounded,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Syamsul Maarif',
                    style:
                        GoogleFonts.nunito(color: Colors.black, fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ),
          drawer: DrawerTablet(
            scroll: scrollTo,
          ),
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: SingleChildScrollView(
              controller: _controller,
              child: Column(
                children: [
                  HomeTablet(category: category, index: 0),
                  ServiceTablet(category: category, index: 1, pixels: pixels),
                  const HeaderTablet(),
                  ProjectTabletA(category: category, index: 2, pixels: pixels),
                  ProjectTabletB(pixels: pixels),
                  const TechNologyTablet(),
                  ContactTablet(category: category, index: 3, pixels: pixels)
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
