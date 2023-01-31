import 'package:flutter/material.dart';
import './login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: const TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.normal,
                fontSize: 50,
                color: Colors.white,
              ),
            ),
        primarySwatch: Colors.purple,
      ),
      home: LoginPage(),
    );
  }
}
