import 'package:flutter/material.dart';

class BGAppBarDesktop extends StatefulWidget {
  const BGAppBarDesktop({
    Key? key,
  }) : super(key: key);

  @override
  State<BGAppBarDesktop> createState() => _BGAppBarDesktopState();
}

class _BGAppBarDesktopState extends State<BGAppBarDesktop> {
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
    );
  }
}
