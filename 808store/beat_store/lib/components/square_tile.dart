import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(37)),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).colorScheme.outline),
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromARGB(255, 37, 37, 37)),
        child: Image.asset(
          imagePath,
          height: 40,
        ),
      ),
    );
  }
}
