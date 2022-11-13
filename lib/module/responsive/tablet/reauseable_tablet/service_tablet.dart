import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/InfoPalette.dart';

class ServiceTablet extends StatefulWidget {
  final List<GlobalKey> category;
  final int index;
  final double pixels;

  const ServiceTablet({
    Key? key,
    required this.category,
    required this.index,
    required this.pixels,
  }) : super(key: key);

  @override
  State<ServiceTablet> createState() => _ServiceTabletState();
}

class _ServiceTabletState extends State<ServiceTablet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: widget.category[widget.index],
      height: 560.0,
      width: double.infinity,
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            right: -200.0,
            child: Container(
              height: 430.0,
              width: 430.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.grey[100]!,
                    Colors.blue,
                  ],
                ),
                borderRadius: BorderRadius.circular(300.0),
              ),
            ),
          ),
          Column(
            children: [
              Text(
                'Services',
                style: GoogleFonts.nunito(
                  fontSize: 26.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AnimatedOpacity(
                    opacity: widget.pixels >= 100 ? 1.0 : 0.4,
                    duration: const Duration(milliseconds: 600),
                    child: AnimatedPadding(
                      duration: const Duration(milliseconds: 600),
                      padding: EdgeInsets.only(
                          top: widget.pixels >= 200 ? 1.0 : 400.0),
                      child: const InfoPaletteTablet(
                        title: 'Mobile Development',
                        text:
                            'Communicate with colleagues, share ideas, find teams in one project in one space to create mobile apps',
                        icon: Icons.phone_android,
                      ),
                    ),
                  ),
                  const InfoPaletteTablet(
                    title: 'Web Development',
                    text:
                        'flutter can also make a pretty good web application to display something that is almost perfect',
                    icon: Icons.web,
                  ),
                  const InfoPaletteTablet(
                    title: 'Machine Learning',
                    text:
                        'object detection also I really like using the yolov 5 algorithm, it can be combined with flutter',
                    icon: Icons.scanner,
                  ),
                ],
              ),
              const SizedBox(
                height: 60.0,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black87,
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                ),
                onPressed: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 8.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    border: Border.all(
                      color: Colors.grey[800]!,
                    ),
                  ),
                  child: Text(
                    'Explore More',
                    style: GoogleFonts.nunito(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
