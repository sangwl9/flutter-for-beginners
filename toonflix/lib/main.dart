import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(titleLarge: TextStyle(color: Colors.red)),
      ),
      home: Scaffold(
        backgroundColor: Color(0xfff4eddb),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? MyTitle() : Text('nothing'),
              IconButton(
                onPressed: toggleTitle,
                icon: Icon(Icons.remove_red_eye),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyTitle extends StatefulWidget {
  const MyTitle({super.key});

  @override
  State<MyTitle> createState() => _MyTitleState();
}

class _MyTitleState extends State<MyTitle> {
  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge!.color,
      ),
    );
  }
}
