import 'dart:ffi';

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
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Text("Home",
                        style: Theme.of(context).textTheme.headline4),
                  ),
                  const SizedBox(width: 200),
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
              const SizedBox(height: 20),
              Column(
                children: [
                  Container(
                      margin: const EdgeInsets.only(
                          top: 15.0, right: 60),
                      child: Text(
                        "Hello, User!",
                        style: Theme.of(context).textTheme.headline6,
                      )),
                  Container(
                   
                    margin: const EdgeInsets.only(
                        top: 15.0, bottom: 15.0, right: 60),
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
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
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
                  Text("Soundkits", style: Theme.of(context).textTheme.headline5,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
