import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.light(surface: Color(0xFFE7626C)),
        textTheme: TextTheme(
          headlineLarge: TextStyle(color: Color(0xFF232B55)),
        ),
        cardColor: Color(0xFFF4EDDB),
      ),
      home: Scaffold(backgroundColor: Color(0xfff4eddb), body: HomeScreen()),
    );
  }
}
