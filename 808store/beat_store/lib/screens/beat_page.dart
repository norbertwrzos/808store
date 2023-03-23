import 'package:flutter/material.dart';
import 'package:beat_store/components/beat_list_element.dart';

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
                      radius: 80))
            ],
          ),
        ),
      ),
    );
  }
}
