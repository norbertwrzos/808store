import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String imagePath;
  final String text;
  const CategoryTile({super.key, required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(37)),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.outline),
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromARGB(255, 37, 37, 37),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.8),
              BlendMode.darken,
            ),
          ),
        ),
        child: Column(
          children: [
            Container(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.only(bottom: 15),
                child:
                    Text(text, style: Theme.of(context).textTheme.headline5)),
          ],
        ),
      ),
    );
  }
}
