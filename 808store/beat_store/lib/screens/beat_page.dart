import 'package:flutter/material.dart';
import 'package:beat_store/components/beat_list_element.dart';

import '../components/beat_tile.dart';

class BeatPage extends StatelessWidget {
  BeatPage(
      {required this.beatPagePhotoPath,
      required this.beatPageTitle,
      required this.beatPageBPM,
      required this.beatPageScale});
  final String beatPagePhotoPath;
  final String beatPageTitle;
  final String beatPageBPM;
  final String beatPageScale;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  beatPageTitle,
                  style: const TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.fade,
                  softWrap: false,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                  width: double.infinity,
                  child: CircleAvatar(
                      backgroundImage: AssetImage(beatPagePhotoPath),
                      radius: 80)),
              const SizedBox(height: 30),
              Container(
                color: Colors.white,
                width: 250,
                height: 40,
                child: Text("aaaaaaa"),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    beatPageBPM,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    beatPageScale,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    "808heather",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Licensing",
                    style: Theme.of(context).textTheme.headline2,
                  )),
              const SizedBox(height: 20),
              Column(
                children: [
                  Scrollbar(
                    thumbVisibility: true,
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 170,
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: const [
                                BeatTile(
                                    licenseType: "Basic\nLease",
                                    licenseDescription: "- MP3 file",
                                    beatPrice: "99.99 PLN"),
                                BeatTile(
                                    licenseType: "Premium\nLease",
                                    licenseDescription: "- WAV file\n- Stems",
                                    beatPrice: "149.99 PLN"),
                                BeatTile(
                                    licenseType: "Exclusive\nLicensce",
                                    licenseDescription:
                                        "- WAV file\n- Stems\n- All yours",
                                    beatPrice: "299.99 PLN"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
