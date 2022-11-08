import 'dart:math';

import 'package:flutter/material.dart';
import '../controller/navigation_new_controller.dart';
import '../widget/header_nav.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/info_pallete.dart';

class NavigationNewView extends StatefulWidget {
  const NavigationNewView({Key? key}) : super(key: key);

  Widget build(context, NavigationNewController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: 180.0,
            height: 40.0,
            margin: const EdgeInsets.all(16.0),
            child: const Center(
              child: Text(
                " Syamsul Ma'arif",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: 100.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    HeaderNav(
                      selected: false,
                      text: 'Home',
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    HeaderNav(
                      selected: false,
                      text: 'About',
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    HeaderNav(
                      selected: false,
                      text: 'Project',
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    HeaderNav(
                      selected: false,
                      text: 'Contact',
                    ),
                    SizedBox(
                      height: 40.0,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 600.0,
                        width: MediaQuery.of(context).size.width * 0.45,
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Transform(
                              transform: Matrix4.rotationZ(pi / 6)
                                ..translate(-180.0, 170.0),
                              child: Container(
                                height: 350.0,
                                width: 700.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(300.0),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 100.0,
                              left: 100.0,
                              child: SizedBox(
                                height: 400.0,
                                width: 400.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ' Hello, I am',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 46.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'Syamsul Maarif',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 46.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    Container(
                                      margin:
                                          const EdgeInsets.only(right: 20.0),
                                      width: 400.0,
                                      height: 100.0,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            16.0,
                                          ),
                                        ),
                                      ),
                                      child: const Text(
                                        "Experience in Flutter Mobile  ,Flutter Web  and Machine Learning",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 300,
                                      margin: const EdgeInsets.only(
                                        left: 40.0,
                                      ),
                                      height: 100.0,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 40.0,
                                            width: 140.0,
                                            decoration: const BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.green,
                                                  blurRadius: 40,
                                                  offset: Offset(0, 16),
                                                ),
                                              ],
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(12.0),
                                              ),
                                            ),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.green,
                                              ),
                                              onPressed: () {},
                                              child: const Text("View works"),
                                            ),
                                          ),
                                          Container(
                                            height: 40.0,
                                            width: 140.0,
                                            decoration: const BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.green,
                                                  blurRadius: 40,
                                                  offset: Offset(0, 16),
                                                ),
                                              ],
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(12.0),
                                              ),
                                            ),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.green,
                                              ),
                                              onPressed: () {},
                                              child: const Text("Get in touch"),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 600.0,
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width * 0.55,
                          child: Stack(
                            children: [
                              Center(
                                child: Container(
                                  height: 420.0,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://i.ibb.co/BjZmPsz/Learn-3-D-Modeling-for-Beginners-Instagram-Post.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 400.0,
                width: double.infinity,
                color: Colors.white,
                child: Stack(
                  children: [
                    Positioned(
                      right: -200.0,
                      child: Container(
                        height: 330.0,
                        width: 430.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(300.0),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "technical skills",
                          style: GoogleFonts.nunito(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            InfoPallete(
                              title: 'Mobile Development',
                              text:
                                  'Communicate with colleagues, share ideas, find teams in one project in one space to create mobile apps',
                              icon: Icons.phone_android,
                            ),
                            InfoPallete(
                              title: 'Web Development',
                              text:
                                  'flutter can also make a pretty good web application to display something that is almost perfect',
                              icon: Icons.web,
                            ),
                            InfoPallete(
                              title: 'Machine Learning',
                              text:
                                  'object detection also I really like using the yolov 5 algorithm, it can be combined with flutter',
                              icon: Icons.scanner,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<NavigationNewView> createState() => NavigationNewController();
}
