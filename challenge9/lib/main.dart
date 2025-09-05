import 'package:flutter/material.dart';
import 'package:challenge9/screens/home_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.light(surface: Color(0xffe64d3d)),
        textTheme: TextTheme(
          headlineLarge: TextStyle(color: Color(0xFF232B55)),
          bodyMedium: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5)),
        ),
        cardColor: Color(0xFFF4EDDB),
      ),
      home: Scaffold(backgroundColor: Color(0xfff4eddb), body: HomeScreen()),
    );
  }
}
