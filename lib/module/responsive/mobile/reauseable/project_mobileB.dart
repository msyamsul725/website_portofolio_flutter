import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectMobileB extends StatefulWidget {
  const ProjectMobileB({
    Key? key,
  }) : super(key: key);

  @override
  State<ProjectMobileB> createState() => _ProjectMobileBState();
}

class _ProjectMobileBState extends State<ProjectMobileB> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 200.0,
            width: 260.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.network(
              'https://i.ibb.co/bbDTJ5Z/selesai.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 60.0),
                child: Text(
                  'Pobio Movie App',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w800,
                    fontSize: 14.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                width: 180.0,
                child: Text(
                  'Manage your project, Organize your own workspace, keep statistics and collaborate with your teammates in one place',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                    fontSize: 10.0,
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
        ],
      ),
    );
  }
}
