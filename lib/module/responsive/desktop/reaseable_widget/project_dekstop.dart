import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SMProjectDesktop extends StatefulWidget {
  final List<GlobalKey> categorias;
  final int index;
  final pixels;

  const SMProjectDesktop({
    required this.categorias,
    required this.index,
    required this.pixels,
    Key? key,
  }) : super(key: key);

  @override
  State<SMProjectDesktop> createState() => _SMProjectDesktopState();
}

class _SMProjectDesktopState extends State<SMProjectDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: widget.categorias[widget.index],
      height: 500.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: -250.0,
            child: Container(
              height: 450.0,
              width: 700.0,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.green,
                    Colors.greenAccent,
                  ],
                ),
                borderRadius: BorderRadius.circular(400.0),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            top: 20.0,
            left: widget.pixels >= 800 ? 100.0 : 0.0,
            child: Container(
              height: 400.0,
              width: 700.0,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20.0),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                'https://i.ibb.co/FzTnxHb/sc-fitur.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            right: widget.pixels >= 600 ? 100.0 : 0.0,
            top: 150.0,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 500),
              opacity: widget.pixels >= 600 ? 1.0 : 0.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tani Lite App',
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w800,
                      fontSize: 25.0,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  SizedBox(
                    width: 280.0,
                    child: Text(
                      'Manage your project, Organize your own workspace, keep statistics and collaborate with your teammates in one place',
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50.0,
                        vertical: 20.0,
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Try for free',
                      style: GoogleFonts.nunito(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
