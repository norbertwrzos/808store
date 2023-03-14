import 'package:beat_store/components/slide_gesture_buton.dart';
import 'package:beat_store/components/text_field.dart';
import 'package:flutter/material.dart';

import '../components/icon_button.dart';

class AllBeats extends StatelessWidget {
  AllBeats({super.key});
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              padding: const EdgeInsets.only(top: 16),
              child: const Text(
                "All beats",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                ),
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
                  child: IconButton(
                      icon: Icon(Icons.filter_alt_outlined),
                      color: Colors.white,
                      onPressed: (() {}))),
              Expanded(
                  flex: 1,
                  child: IconButton(
                      icon: Icon(Icons.sort),
                      color: Colors.white,
                      onPressed: (() {}))),
              Expanded(
                  flex: 1,
                  child: IconButton(
                      icon: Icon(Icons.favorite_outline_outlined),
                      color: Colors.white,
                      onPressed: (() {}))),
            ],
          ),
        ]),
      ),
    ));
  }
}
