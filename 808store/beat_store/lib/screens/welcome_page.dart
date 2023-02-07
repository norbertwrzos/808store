import 'dart:ui';
import "./log_page.dart";
import './sign_in_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/loginpage_photo.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
        ),
        child: SafeArea(
          minimum: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 60.0),
                child: Text(
                  "Explore the sounds you've never heard.",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 30),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "808store.",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 3),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(right: 150),
                child: Text("designed & created by 808heather",
                    style: Theme.of(context).textTheme.headline4),
              ),
              const SizedBox(height: 170),
              Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(37)),
                  child: TextButton(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(10),
                        minimumSize: MaterialStateProperty.all(
                            const Size.fromHeight(50)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(37.0))),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromRGBO(188, 98, 255, 1))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LogInPage()),
                      );
                    },
                    child: Text(
                      'Log in',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  )),
              const SizedBox(height: 20),
              Text("First time here?",
                  style: Theme.of(context).textTheme.headline4),
              const SizedBox(height: 15),
              Card(
                elevation: 15,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(37)),
                child: TextButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(60),
                      fixedSize: MaterialStateProperty.all(
                        const Size(150, 50),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color.fromRGBO(193, 193, 193, 69),
                          ),
                          borderRadius: BorderRadius.circular(37.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(26, 26, 26, 1))),
                  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignInPage()),
                      );
                    },
                  child: Text('Sign up!',
                      style: Theme.of(context).textTheme.headlineSmall),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
