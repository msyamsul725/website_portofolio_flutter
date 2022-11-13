import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SMAppBarDesktop extends StatefulWidget {
  final Function scroll;

  const SMAppBarDesktop({Key? key, required this.scroll}) : super(key: key);

  @override
  State<SMAppBarDesktop> createState() => _SMAppBarDesktopState();
}

class _SMAppBarDesktopState extends State<SMAppBarDesktop> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 140.0,
        ),
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
        const Expanded(
          child: SizedBox(
            width: 10.0,
          ),
        ),
        SizedBox(
          width: 400.0,
          height: 60.0,
          child: TabBar(
            tabs: [
              Tab(
                  child: Text('Home',
                      style: GoogleFonts.nunito(
                        fontSize: 18.0,
                        color: Colors.black,
                      ))),
              Tab(
                  child: Text('Services',
                      style: GoogleFonts.nunito(
                        fontSize: 18.0,
                        color: Colors.black,
                      ))),
              Tab(
                  child: Text('Project',
                      style: GoogleFonts.nunito(
                        fontSize: 18.0,
                        color: Colors.black,
                      ))),
              Tab(
                  child: Text('Contact',
                      style: GoogleFonts.nunito(
                        fontSize: 18.0,
                        color: Colors.black,
                      ))),
            ],
            onTap: (int index) => widget.scroll(index),
          ),
        ),
      ],
    );
  }
}
