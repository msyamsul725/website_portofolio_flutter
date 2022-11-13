import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../shared/widget/textfield/textarea.dart';

class ContactDesktop extends StatefulWidget {
  final List<GlobalKey> categorias;
  final int index;
  final pixels;

  const ContactDesktop({
    Key? key,
    required this.categorias,
    required this.index,
    required this.pixels,
  }) : super(key: key);

  @override
  State<ContactDesktop> createState() => _ContactDesktopState();
}

class _ContactDesktopState extends State<ContactDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: widget.categorias[widget.index],
      height: 800.0,
      decoration: const BoxDecoration(color: Colors.white),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 500),
            height: 300.0,
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 160),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    width: 400.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' Syamsul Maarif',
                          style: GoogleFonts.montserrat(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'Code by Syamsul maarif, Powered by flutter ©2022',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 80.0,
                  ),
                  SizedBox(
                    height: 200.0,
                    width: 276.0,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 16.0,
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 60.0),
                          height: 30.0,
                          child: SizedBox(
                            height: 100.0,
                            child: Text(
                              "Contact",
                              style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 24.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 60.0,
                          ),
                          height: 30.0,
                          child: SizedBox(
                            height: 100.0,
                            child: Row(
                              children: [
                                Image.network(
                                  "https://i.ibb.co/hgvps2M/img-336173.png",
                                  width: 18.0,
                                  height: 18.0,
                                  fit: BoxFit.fill,
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Github",
                                  style: GoogleFonts.nunito(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 51.0,
                          ),
                          height: 30.0,
                          child: SizedBox(
                            height: 100.0,
                            child: Row(
                              children: [
                                Image.network(
                                  "https://i.ibb.co/w659PTH/Linkedin-logo.png",
                                  width: 38.0,
                                  height: 18.0,
                                  fit: BoxFit.fill,
                                ),
                                Text(
                                  "Linkedin",
                                  style: GoogleFonts.nunito(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 60.0,
                          ),
                          height: 30.0,
                          width: 276,
                          child: SizedBox(
                            height: 100.0,
                            child: Row(
                              children: [
                                Image.network(
                                  "https://i.ibb.co/42yDkqg/Gmail-logo-max-2800x2800.png",
                                  width: 18.0,
                                  height: 18.0,
                                  fit: BoxFit.fill,
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "msyamsul725@gmail.com",
                                  style: GoogleFonts.nunito(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 600),
            top: widget.pixels >= 2200 ? 0.0 : 600.0,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.96,
                height: 500.0,
                decoration: const BoxDecoration(
                  color: Color(0xffF7F8FC),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(
                        12,
                        16,
                      ),
                    ),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                child: SizedBox(
                  height: 100.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "Connect with me",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                                fontSize: 24.0,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(12),
                              margin: const EdgeInsets.only(),
                              child: TextFormField(
                                maxLength: 20,
                                decoration: const InputDecoration(
                                  labelText: 'Email',
                                  labelStyle: TextStyle(
                                    color: Colors.blueGrey,
                                  ),
                                  suffixIcon: Icon(
                                    Icons.email,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  helperText: 'Enter your email address',
                                ),
                                onChanged: (value) {},
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ExTextArea(
                              id: "messege",
                              label: "Message",
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 40.0,
                              width: 140.0,
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.green,
                                    blurRadius: 24,
                                    offset: Offset(0, 16),
                                  ),
                                ],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                ),
                                onPressed: () {},
                                child: const Text("Send Email"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.20,
                        height: 300.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://i.ibb.co/c6zs262/Learn-3-D-Modeling-for-Beginners-Instagram-Post-1.png"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
