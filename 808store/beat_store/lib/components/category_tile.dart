import 'package:beat_store/screens/category_page.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String imagePath;
  final String text;
  const CategoryTile({required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 30,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(37)),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CategoryPage(
                categoryName: text,
              ),
            ),
          );
        },
        child: Ink(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Theme.of(context).scaffoldBackgroundColor.withOpacity(0.6),
                BlendMode.darken,
              ),
            ),
          ),
          child: Column(
            children: [
              Container(
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.only(top: 100, bottom: 15),
                  child:
                      Text(text, style: Theme.of(context).textTheme.headline5)),
            ],
          ),
        ),
      ),
    );
  }
}
