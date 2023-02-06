import 'package:beat_store/components/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:beat_store/widgets/password.dart';

class LogPage extends StatelessWidget {
  logPage({super.key});

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
                  "Unlock Unexplored Rythms.",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),

              const SizedBox(height: 30),

              // 2nd header
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "808store.",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              
              const SizedBox(
                height: 100,
              ),

              // E-mail textfield
              textField(controller: usernameController, hintText: 'Enter your email', obscureText: false),
              const SizedBox(
                height: 30,
              ),
              textField(controller: passwordController, hintText: "Enter your password", obscureText: true),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      const Size(150, 50),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(37.0))),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(188, 98, 255, 1))),
                onPressed: () {},
                child: Text(
                  'Log in',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              TextButton(
                  child: Text("Return"),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
