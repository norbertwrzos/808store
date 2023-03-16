import 'package:beat_store/screens/beat_page.dart';
import 'package:flutter/material.dart';

class BeatListElement extends StatelessWidget {
  const BeatListElement(
      {super.key,
      required this.beatPhotoPath,
      required this.beatTitle,
      required this.beatBPM,
      required this.beatScale});
  final String beatPhotoPath;
  final String beatTitle;
  final String beatBPM;
  final String beatScale;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).colorScheme.background,
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BeatPage()),
            );
          },
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
                CircleAvatar(
                  backgroundImage: AssetImage(beatPhotoPath),
                  radius: 50,
                ),
                const SizedBox(width: 20),
                Stack(
                  children: [
                    SizedBox(
                      width: 200.0,
                      child: Text(
                        beatTitle,
                        style: Theme.of(context).textTheme.headline5,
                        overflow: TextOverflow.fade,
                        softWrap: false,
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 35),
                            Text(
                              beatBPM,
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            const SizedBox(height: 5),
                            Text(beatScale,
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
                              Icon(
                                Icons.favorite_outline_rounded,
                                size: 40,
                                color: Colors.grey.shade700,
                              ),
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
      ),
    );
  }
}
