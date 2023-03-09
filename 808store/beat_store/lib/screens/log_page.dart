import 'package:beat_store/components/my_button.dart';
import 'package:beat_store/components/square_tile.dart';
import 'package:beat_store/components/text_field.dart';
import 'package:beat_store/screens/home_page.dart';
import 'package:beat_store/screens/navbar.dart';
import 'package:flutter/material.dart';
import './sign_in_page.dart';

class LogInPage extends StatelessWidget {
  LogInPage({super.key});

// text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Header
              Container(
                margin:
                    const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 60.0),
                child: Text(
                  "Welcome back, you've been missed!",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),

              const SizedBox(height: 60),

              // E-mail textfield
              MyTextField(
                  controller: usernameController,
                  hintText: 'E-mail',
                  obscureText: false),

              const SizedBox(
                height: 10,
              ),

              // Password texfield
              MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true),

              const SizedBox(
                height: 30,
              ),

              //Log in button
              MyButton(onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NavBar()),
                      );
                    }, text: "Log in"),

              const SizedBox(
                height: 20,
              ),

              // Or continue with
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Or continue with",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade700,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              // Other options of logging in
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SquareTile(imagePath: "assets/images/google.png"),
                  SizedBox(
                    width: 20,
                  ),
                  SquareTile(imagePath: "assets/images/fb.png")
                ],
              ),

              const SizedBox(height: 20),

              // Not a member?
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700,
                      )),
                  const SizedBox(width: 1),
                  TextButton(
                      child: const Text(
                        "Register now",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 15,
                          color: Colors.blue,
                        ),
                      ),
                      onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignInPage()),
                      );
                    },
              ),],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
