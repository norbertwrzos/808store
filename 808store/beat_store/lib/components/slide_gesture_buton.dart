import 'dart:ui';

import 'package:flutter/material.dart';

class SlideGestureButton extends StatelessWidget {
  SlideGestureButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 45,
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
          child: Text(
            text,
            style: const TextStyle(fontFamily: "Inter",
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,)
          ),
        ),
      ),
    );
  }
}
