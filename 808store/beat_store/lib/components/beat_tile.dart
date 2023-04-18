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
    return Stack(
      children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 150,
              width: 170,
              margin: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
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
                        const Spacer(),
                        const Icon(
                          Icons.add_shopping_cart_rounded,
                          size: 40,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Spacer()
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 20,
            width: 170,
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
            ),
            child: Text(
              beatPrice,
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
