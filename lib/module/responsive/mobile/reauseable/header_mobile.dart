import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderProject extends StatefulWidget {
  const HeaderProject({Key? key}) : super(key: key);

  @override
  State<HeaderProject> createState() => _HeaderProjectState();
}

class _HeaderProjectState extends State<HeaderProject> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 100.0,
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      width: MediaQuery.of(context).size.width,
      child: Text(
        'Project',
        textAlign: TextAlign.center,
        style: GoogleFonts.nunito(
          fontSize: 26.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
