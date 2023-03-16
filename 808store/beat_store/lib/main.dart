import 'package:flutter/material.dart';
import 'screens/welcome_page.dart';
import 'screens/welcome_page.dart';
import 'screens/log_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(26, 26, 26, 1),
        textTheme: ThemeData.dark().textTheme.copyWith(
              // HEADER THEME
              headline6: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Inter",
                fontSize: 48,
                color: Colors.white,
              ),
              // MAIN TEXT THEME
              headline5: const TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
              // 2nd TEXT THEME
              headline4: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.grey.shade700,
              ),
              headline3: const TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.normal,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromRGBO(188, 98, 255, 1),
          secondary: const Color.fromRGBO(26, 26, 26, 1),
          outline: Color.fromARGB(186, 133, 133, 133),
          background: Color.fromARGB(255, 37, 37, 37),
        ),
      ),
      home: WelcomePage(),
    );
  }
}
