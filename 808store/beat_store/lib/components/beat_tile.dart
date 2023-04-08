import 'package:beat_store/screens/category_page.dart';
import 'package:flutter/material.dart';

class BeatTile extends StatelessWidget {
  const BeatTile(
      {Key? key,
      required this.licenseType,
      required this.licenseDescription,
      required this.beatPrice})
      : super(key: key);
  final String licenseType;
  final String licenseDescription;
  final String beatPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 30,
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 150,
            width: 150,
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).colorScheme.background,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(licenseType,
                      style: Theme.of(context).textTheme.headline5),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(licenseDescription,
                          style: Theme.of(context).textTheme.headline4),
                      const SizedBox(width: 12),
                      const Icon(
                        Icons.add_shopping_cart_rounded,
                        size: 35,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 20,
          width: 110,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(37),
                bottomRight: Radius.circular(37)),
          ),
          child: Text(
            beatPrice,
            style: Theme.of(context).textTheme.headline5,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
