import 'package:beat_store/components/navbar.dart';
import 'package:beat_store/components/slide_gesture_buton.dart';
import 'package:beat_store/components/text_field.dart';
import 'package:flutter/material.dart';

class AllBeats extends StatelessWidget {
  AllBeats({super.key});
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavBar(),
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
                  Align(
                      alignment: Alignment.centerLeft,
                      child: SlideGestureButton(
                          width: 100,
                          height: 50,
                          text: "Filter",
                          onPressed: (() {}))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: SlideGestureButton(
                          width: 100,
                          height: 50,
                          text: "Sort",
                          onPressed: (() {}))),
                ],
              ),
            ]),
          ),
        ));
  }
}
