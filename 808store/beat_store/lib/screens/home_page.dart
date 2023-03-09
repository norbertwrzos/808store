import 'package:beat_store/components/category_tile.dart';
import 'package:beat_store/components/slide_gesture_buton.dart';
import 'package:beat_store/screens/all_beats.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                          text: "See what's new!",
                          width: 180,
                          height: 50,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        SlideGestureButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AllBeats()),
                            );
                          },
                          text: "All beats",
                          width: 140,
                          height: 50,
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
                  const SizedBox(height: 5),
                  SizedBox(
                    height: 160,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Expanded(
                            flex: 1,
                            child: CategoryTile(
                                imagePath: "assets/images/loopkits.jpg",
                                text: "Loopkits")),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            flex: 1,
                            child: CategoryTile(
                                imagePath: "assets/images/drumkits.jpg",
                                text: "Drumkits"))
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text("Categories",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.white,
                        )),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: 160,
                    child: Row(
                      children: const [
                        Expanded(
                          flex: 1,
                          child: CategoryTile(
                              imagePath: "assets/images/supertrap.jpg",
                              text: "Supertrap"),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                            flex: 1,
                            child: CategoryTile(
                                imagePath: "assets/images/4pf.jpg",
                                text: "4PF"))
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 160,
                    child: Row(
                      children: const [
                        Expanded(
                          flex: 1,
                          child: CategoryTile(
                              imagePath: "assets/images/jersey.jpg",
                              text: "Jersey Club"),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                            flex: 1,
                            child: CategoryTile(
                                imagePath: "assets/images/808mafia.jpg",
                                text: "808Mafia"))
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
