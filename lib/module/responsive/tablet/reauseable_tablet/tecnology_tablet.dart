import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TechNologyTablet extends StatefulWidget {
  const TechNologyTablet({Key? key}) : super(key: key);

  @override
  State<TechNologyTablet> createState() => _TechNologyTabletState();
}

class _TechNologyTabletState extends State<TechNologyTablet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.0,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            16.0,
          ),
        ),
      ),
      child: Column(
        children: [
          Text(
            'technologies used on Development',
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
              fontSize: 26.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Image.network(
                  "https://i.ibb.co/zrZBdWW/logo-flutter-1080px-clr.png",
                  width: 44.0,
                  height: 44.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 40.0,
              ),
              SizedBox(
                child: Image.network(
                  "https://i.ibb.co/pr5Pf3n/firebase-logo-png-firebase-logo-png-transparent-amp-svg-vector-pluspng-2400x3291.png",
                  width: 44.0,
                  height: 44.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 40.0,
              ),
              SizedBox(
                child: Image.network(
                  "https://i.ibb.co/6wH1d44/mysql-logo-2800x2800-pixels1-1024x1024.png",
                  width: 44,
                  height: 44.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 40.0,
              ),
              SizedBox(
                child: Image.network(
                  "https://i.ibb.co/hgvps2M/img-336173.png",
                  width: 44,
                  height: 44.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 40.0,
              ),
              SizedBox(
                child: Image.network(
                  "https://i.ibb.co/xzYYQht/Python-logo-icon.png",
                  width: 44,
                  height: 44.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 40.0,
              ),
              SizedBox(
                child: Image.network(
                  "https://i.ibb.co/HLSc6gw/6fd83f6c101f85bb417448302daedfb9.png",
                  width: 44,
                  height: 44.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
