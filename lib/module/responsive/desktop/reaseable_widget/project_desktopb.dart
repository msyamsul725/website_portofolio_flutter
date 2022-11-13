import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectDesktopB extends StatefulWidget {
  final pixels;
  const ProjectDesktopB({
    Key? key,
    required this.pixels,
  }) : super(key: key);

  @override
  State<ProjectDesktopB> createState() => _ProjectDesktopBState();
}

class _ProjectDesktopBState extends State<ProjectDesktopB> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: -250.0,
            child: Container(
              height: 450.0,
              width: 700.0,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.blue,
                    Colors.blueAccent,
                  ],
                ),
                borderRadius: BorderRadius.circular(400.0),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            top: 20.0,
            right: widget.pixels >= 1400 ? 100.0 : 0.0,
            child: Container(
              height: 400.0,
              width: 700.0,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20.0),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                'https://i.ibb.co/bbDTJ5Z/selesai.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            left: widget.pixels >= 1400 ? 100.0 : 0.0,
            top: 150.0,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 500),
              opacity: widget.pixels >= 1400 ? 1.0 : 0.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pobio Movie App',
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
