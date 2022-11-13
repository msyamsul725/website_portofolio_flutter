import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarTablet extends StatefulWidget {
  const AppBarTablet({Key? key}) : super(key: key);

  @override
  State<AppBarTablet> createState() => _AppBarTabletState();
}

class _AppBarTabletState extends State<AppBarTablet> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
              style: GoogleFonts.nunito(color: Colors.black, fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
