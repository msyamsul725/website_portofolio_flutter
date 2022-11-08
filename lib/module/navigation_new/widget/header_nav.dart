import 'package:flutter/material.dart';

class HeaderNav extends StatefulWidget {
  final String text;
  final bool selected;
  const HeaderNav({
    Key? key,
    required this.selected,
    required this.text,
  }) : super(key: key);

  @override
  State<HeaderNav> createState() => _HeaderNavState();
}

class _HeaderNavState extends State<HeaderNav> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        widget.selected
            ? const SizedBox(
                height: 5.0,
              )
            : const SizedBox(),
        widget.selected
            ? const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 2.0,
              )
            : const SizedBox(),
      ],
    );
  }
}
