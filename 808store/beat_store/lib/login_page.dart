import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              margin:
                  const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 70.0),
              child: Text(
                "Explore the sounds you've never heard.",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            SizedBox(height: 30),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "808store.",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            SizedBox(height: 3),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(right: 150),
              child: const Text(
                "designed & created by 808heather",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(193, 193, 193, 69),
                ),
              ),
            ),
            const SizedBox(height: 60),
            TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 15.0),
                  ),
                  minimumSize:
                      MaterialStateProperty.all(const Size.fromHeight(50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0))),
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(188, 98, 255, 1))),
              onPressed: () {},
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "First time here?",
              style: TextStyle(
                color: Color.fromRGBO(193, 193, 193, 69),
              ),
            ),
            SizedBox(height: 15),
            TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 100.0),
                  ),
                  minimumSize:
                      MaterialStateProperty.all(const Size.fromHeight(50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          side: BorderSide(
                              color: Color.fromRGBO(193, 193, 193, 69)),
                          borderRadius: BorderRadius.circular(15.0))),
                  backgroundColor:
                      MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0))),
              onPressed: () {},
              child: const Text(
                'Sign up!',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
