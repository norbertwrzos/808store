import 'package:flutter/material.dart';

class BeatListElement extends StatelessWidget {
  const BeatListElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(15),
      color: Theme.of(context).colorScheme.background,
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {},
        child: Container(
          width: double.infinity,
          height: 100,
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage("assets/images/4pf.jpg"),
                radius: 50,
              ),
              const SizedBox(width: 20),
              Stack(
                children: [
                  SizedBox(
                    width: 200.0,
                    child: Text(
                      "\"HEAVY\" - Lil Baby Type Beat",
                      style: Theme.of(context).textTheme.headline5,
                      overflow: TextOverflow.fade,
                      softWrap: false,
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          const SizedBox(height: 35),
                          Text(
                            "140 BPM",
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          const SizedBox(height: 5),
                          Text("D# minor",
                              style: Theme.of(context).textTheme.headline4),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.play_circle_fill_rounded,
                              size: 40,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            const SizedBox(width: 20),
                            Icon(Icons.favorite_outline_rounded, size: 40, color: Colors.grey.shade700,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(right: 5),
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
