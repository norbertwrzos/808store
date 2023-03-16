import 'package:flutter/material.dart';
import 'package:beat_store/components/beat_list_element.dart';

class BeatPage extends StatelessWidget {
  const BeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  padding: const EdgeInsets.only(top: 16),
                  child: const Text(
                    "Beat title",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
              const SizedBox(height: 20),
              const SizedBox(
                  width: double.infinity,
                  child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/dom.jpg"),
                      radius: 80))
            ],
          ),
        ),
      ),
    );
  }
}
