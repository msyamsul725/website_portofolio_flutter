import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TechDesktop extends StatefulWidget {
  final pixels;

  const TechDesktop({
    Key? key,
    required this.pixels,
  }) : super(key: key);

  @override
  State<TechDesktop> createState() => _TechDesktopState();
}

class _TechDesktopState extends State<TechDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
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
                width: 80.0,
                child: Image.network(
                  "https://i.ibb.co/zrZBdWW/logo-flutter-1080px-clr.png",
                  width: 64.0,
                  height: 64.0,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                width: 40.0,
              ),
              SizedBox(
                width: 60.0,
                child: Image.network(
                  "https://i.ibb.co/pr5Pf3n/firebase-logo-png-firebase-logo-png-transparent-amp-svg-vector-pluspng-2400x3291.png",
                  width: 64.0,
                  height: 64.0,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                width: 40.0,
              ),
              SizedBox(
                width: 100.0,
                child: Image.network(
                  "https://i.ibb.co/6wH1d44/mysql-logo-2800x2800-pixels1-1024x1024.png",
                  height: 64.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 40.0,
              ),
              SizedBox(
                width: 80.0,
                child: Image.network(
                  "https://i.ibb.co/hgvps2M/img-336173.png",
                  height: 64.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 40.0,
              ),
              SizedBox(
                width: 80.0,
                child: Image.network(
                  "https://i.ibb.co/xzYYQht/Python-logo-icon.png",
                  height: 64.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 40.0,
              ),
              AnimatedOpacity(
                opacity: widget.pixels >= 1600 ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 600),
                child: AnimatedPadding(
                  duration: const Duration(milliseconds: 600),
                  padding: EdgeInsets.only(
                      right: widget.pixels >= 1800 ? 1.0 : 300.0),
                  child: SizedBox(
                    width: 80.0,
                    child: Image.network(
                      "https://i.ibb.co/HLSc6gw/6fd83f6c101f85bb417448302daedfb9.png",
                      height: 64.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
