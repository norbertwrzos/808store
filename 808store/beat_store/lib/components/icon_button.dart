import 'dart:ui';

import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  MyIconButton({
    required this.onPressed,
    required this.width,
    required this.height,
    required this.myWidgetBuilder,
  });

  void Function()? onPressed;
  final double width;
  final double height;
  final Widget Function() myWidgetBuilder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: Card(
            elevation: 15,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(37)),
            child: TextButton(
                child: myWidgetBuilder(),
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(const Size(150, 20)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(37.0))),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(188, 98, 255, 1))),
                onPressed: onPressed)));
  }
}
