import 'package:beat_store/components/beat_list_element.dart';

import 'package:beat_store/components/slide_gesture_buton.dart';
import 'package:beat_store/components/text_field.dart';
import 'package:beat_store/data/beats_data.dart';
import 'package:beat_store/screens/favorites_page.dart';
import 'package:flutter/material.dart';

import '../components/icon_button.dart';

class AllBeats extends StatelessWidget {
  AllBeats({Key? key}) : super(key: key);
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: Column(children: [
          const SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 15.0, right: 60),
              child: Text(
                "All beats",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ]),
          const SizedBox(
            height: 20,
          ),
          MyTextField(
              controller: searchController,
              hintText: "Enter a Keyword (BPM, Tag or name)",
              obscureText: false),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: MyIconButton(
                      height: 50,
                      width: 120,
                      myWidgetBuilder: () =>
                          const Icon(Icons.tune, color: Colors.white),
                      onPressed: (() {}))),
              Expanded(
                  flex: 1,
                  child: MyIconButton(
                      height: 50,
                      width: 120,
                      myWidgetBuilder: () =>
                          const Icon(Icons.sort, color: Colors.white),
                      onPressed: (() {}))),
              Expanded(
                  flex: 1,
                  child: MyIconButton(
                      height: 50,
                      width: 120,
                      myWidgetBuilder: () => const Icon(
                          Icons.favorite_outline_rounded,
                          color: Colors.white),
                      onPressed: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FavoritesPage()));
                      }))),
            ],
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              SizedBox(
                height: 500,
                child: ListView(
                  children: beatsData
                      .map((bData) => BeatListElement(
                          beatPhotoPath: bData.beatPhotoPath,
                          beatTitle: bData.beatTitle,
                          beatBPM: bData.beatBPM,
                          beatScale: bData.beatScale))
                      .toList(),
                ),
              )
            ],
          )
        ]),
      ),
    ));
  }
}
