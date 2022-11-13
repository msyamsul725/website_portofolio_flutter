import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../reauseable/contact_mobile.dart';
import '../reauseable/header_mobile.dart';
import '../reauseable/home_movile.dart';
import '../reauseable/project_mobile.dart';
import '../reauseable/project_mobileB.dart';
import '../reauseable/service_mobile.dart';
import '../widget/drawer_mobile.dart';

class MyMobileBody extends StatefulWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  State<MyMobileBody> createState() => _MyMobileBodyState();
}

class _MyMobileBodyState extends State<MyMobileBody> {
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
          drawer: DrawerMobile(scroll: scrollTo),
          body: SizedBox(
            child: SingleChildScrollView(
              controller: ScrollController(),
              child: Column(
                children: [
                  HomeMOBILE(categorias: category, index: 0),
                  ServiceMobile(categorias: category, index: 1),
                  const HeaderProject(),
                  ProjectMobileA(categorias: category, index: 2),
                  const ProjectMobileB(),
                  ContatMobile(
                    categorias: category,
                    index: 3,
                    pixels: pixels,
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
