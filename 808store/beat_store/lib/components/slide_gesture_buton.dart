import 'dart:ui';

import 'package:flutter/material.dart';

class SlideGestureButton extends StatelessWidget {
  SlideGestureButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.width,
      required this.height});

  final String text;
  void Function()? onPressed;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Card(
        elevation: 15,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(37)),
        child: TextButton(

          style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(const Size(150, 20)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(37.0))),
              backgroundColor: MaterialStateProperty.all(
                  const Color.fromRGBO(188, 98, 255, 1))),
          onPressed: onPressed,
          child: Text(text,
              style: const TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
