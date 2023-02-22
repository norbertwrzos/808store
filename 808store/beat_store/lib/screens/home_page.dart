import 'dart:ffi';

import 'package:beat_store/components/category_tile.dart';
import 'package:beat_store/components/slide_gesture_buton.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text("Home",
                        style: Theme.of(context).textTheme.headline4),
                  ),
                  const SizedBox(width: 230),
                  const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 25,
                  ),
                  const SizedBox(width: 30),
                  const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 25,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(top: 15.0, right: 60),
                    child: Text(
                      "Hello, User!",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "What are you looking for today?",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        SlideGestureButton(
                          onPressed: () {},
                          text: "Overview",
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        SlideGestureButton(
                          onPressed: () {},
                          text: "All beats",
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text("Soundkits",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(height: 5),
                  CategoryTile(imagePath: "assets\images\loginpage_photo.jpg", text: "Loopkits",)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
