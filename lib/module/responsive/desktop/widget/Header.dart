import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.green,
          Colors.blue,
        ],
      )),
      height: 60.0,
      width: MediaQuery.of(context).size.width,
      child: Expanded(
        child: Row(
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
                width: 40.0,
              ),
            ),
            Expanded(
              child: Row(
                children: const [
                  Expanded(
                    child: HeaderNav(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderNav extends StatefulWidget {
  const HeaderNav({
    super.key,
  });
  @override
  _HeaderNavState createState() => _HeaderNavState();
}

class _HeaderNavState extends State<HeaderNav> {
  var selected = "";
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: NvBar.nvbar.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        var item = NvBar.nvbar[index];
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 28.0),
              child: InkWell(
                onTap: () {
                  selected = item['name'].toString();
                  setState(() {});
                },
                child: Text(
                  item['name'],
                  style: GoogleFonts.nunito(
                      fontSize: 18.0,
                      color: (selected == item['name'].toString())
                          ? Colors.white
                          : Colors.black),
                ),
              ),
            ),
            selected == item['name'].toString()
                ? const SizedBox(
                    height: 5.0,
                  )
                : const SizedBox(),
            selected == item['name'].toString()
                ? const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 2.0,
                  )
                : const SizedBox(),
          ],
        );
      },
    );
  }
}

class NvBar {
  static List nvbar = [
    {
      "name": "Home",
    },
    {
      "name": "About",
    },
    {
      "name": "Project",
    },
    {
      "name": "Contact",
    }
  ];
}
