import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({
    required this.text,
    required this.onPressed,
  });

  final String text;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(37)),
      child: TextButton(
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(const Size(150, 50)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(37.0))),
            backgroundColor: MaterialStateProperty.all(
                const Color.fromRGBO(188, 98, 255, 1))),
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}
