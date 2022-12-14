import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerMobile extends StatefulWidget {
  final Function scroll;
  const DrawerMobile({
    required this.scroll,
    Key? key,
  }) : super(key: key);

  @override
  State<DrawerMobile> createState() => _DrawerMobileState();
}

class _DrawerMobileState extends State<DrawerMobile> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue,
            Colors.green,
          ],
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              width: 600,
              child: TabBar(
                tabs: [
                  Tab(
                      child: Text('Home',
                          style: GoogleFonts.nunito(
                            fontSize: 12.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ))),
                  Tab(
                      child: Text('Service',
                          style: GoogleFonts.nunito(
                            fontSize: 12.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ))),
                  Tab(
                      child: Text('Project',
                          style: GoogleFonts.nunito(
                            fontSize: 12.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ))),
                  Tab(
                      child: Text('Contact',
                          style: GoogleFonts.nunito(
                            fontSize: 12.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ))),
                ],
                onTap: (int index) => widget.scroll(index),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Container(
              height: 300.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://i.ibb.co/7pGbCVs/Stella-the-Spacewoman-2.png",
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
            const Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Copyright ?? 2022 | syamsul maarif',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
