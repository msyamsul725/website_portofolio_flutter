import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SMHome extends StatefulWidget {
  final List<GlobalKey> categorias;
  final int index;

  const SMHome({
    Key? key,
    required this.categorias,
    required this.index,
  }) : super(key: key);

  @override
  State<SMHome> createState() => _NyobaState();
}

class _NyobaState extends State<SMHome> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      key: widget.categorias[widget.index],
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
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.grey[300]!,
                            Colors.green,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(300.0),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100.0,
                    left: 100.0,
                    child: SizedBox(
                      height: 400.0,
                      width: 420.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 40.0,
                          ),
                          AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                ' Hello, I am',
                                textStyle: GoogleFonts.montserrat(
                                  fontSize: 46.0,
                                  fontWeight: FontWeight.w700,
                                ),
                                speed: const Duration(milliseconds: 400),
                              ),
                              TypewriterAnimatedText(
                                ' Syamsul Maarif',
                                textStyle: GoogleFonts.montserrat(
                                  fontSize: 46.0,
                                  fontWeight: FontWeight.w700,
                                ),
                                speed: const Duration(milliseconds: 400),
                              ),
                            ],
                            isRepeatingAnimation: true,
                            totalRepeatCount: 20,
                            pause: const Duration(milliseconds: 400),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                          ),
                          // AnimatedTextKit(
                          //   animatedTexts: [
                          //     TypewriterAnimatedText(
                          //       ' Syamsul Maarif',
                          //       textStyle: GoogleFonts.montserrat(
                          //         fontSize: 46.0,
                          //         fontWeight: FontWeight.w700,
                          //       ),
                          //       speed: const Duration(milliseconds: 900),
                          //     ),
                          //   ],
                          //   totalRepeatCount: 4,
                          //   pause: const Duration(milliseconds: 1000),
                          //   displayFullTextOnTap: true,
                          //   stopPauseOnTap: true,
                          // ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 20.0),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 40.0,
                                  width: 140.0,
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.green,
                                        blurRadius: 12,
                                        offset: Offset(0, 8),
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
                                        blurRadius: 12,
                                        offset: Offset(0, 8),
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
                        margin: const EdgeInsets.only(
                          top: 40.0,
                        ),
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
        // Header(),
      ],
    );
  }
}
