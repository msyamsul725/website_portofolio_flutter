import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoPallete extends StatefulWidget {
  final String title;
  final String text;
  final IconData icon;
  const InfoPallete({
    Key? key,
    required this.text,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  State<InfoPallete> createState() => _InfoPalleteState();
}

class _InfoPalleteState extends State<InfoPallete> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Icon(
            widget.icon,
            size: 22.0,
            color: Colors.black87,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          widget.title,
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.w800,
            fontSize: 18.0,
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        SizedBox(
          width: 200.0,
          child: Text(
            widget.text,
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w400,
              color: Colors.black54,
              fontSize: 14.0,
            ),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
