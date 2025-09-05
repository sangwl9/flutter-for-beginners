import 'package:flutter/material.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static int timerMinutes = 1500;
  int totalSeconds = timerMinutes;
  int selectedKey = 25;
  bool isRunning = false;
  int round = 0, goal = 0;
  late Timer timer;

  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        round = round + 1;
        isRunning = false;
        totalSeconds = timerMinutes;
        if (round >= 4) {
          round = 0;
          goal += 1;
        }
        if (goal > 12) {
          goal = 0;
        }
      });
      timer.cancel();
    } else {
      setState(() {
        totalSeconds = totalSeconds - 1;
      });
    }
  }

  void onStartPressed() {
    timer = Timer.periodic(Duration(seconds: 1), onTick);
    setState(() {
      isRunning = true;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  void onResetPressed() {
    try {
      timer.cancel();
    } catch (_) {}

    setState(() {
      isRunning = false;
      totalSeconds = timerMinutes;
      round = 0;
      goal = 0;
    });
  }

  void setTimerMinutes(int timerMinutes) {
    selectedKey = timerMinutes;
    _HomeScreenState.timerMinutes = timerMinutes * 60;
    onResetPressed();
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split('.').first;
  }

  @override
  Widget build(BuildContext context) {
    var notSelectedBoxDecoration = BoxDecoration(
      color: Theme.of(context).colorScheme.surface,
      borderRadius: BorderRadius.circular(5),
      border: Border.all(width: 3, color: Color.fromRGBO(255, 255, 255, 0.5)),
    );
    var selectedBoxDecoration = BoxDecoration(
      color: Theme.of(context).cardColor,
      borderRadius: BorderRadius.circular(5),
      border: Border.all(width: 3, color: Theme.of(context).cardColor),
    );
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: 30,
                  horizontal: 20,
                ),
                child: Text(
                  'POMOTIMER',
                  style: TextStyle(
                    color: Theme.of(context).cardColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: EdgeInsetsGeometry.symmetric(
                        horizontal: 15,
                        vertical: 20,
                      ),
                      child: Text(
                        format(totalSeconds).substring(2, 4),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.surface,
                          fontSize: 89,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    ":",
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyMedium!.color,
                      fontSize: 89,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: EdgeInsetsGeometry.symmetric(
                        horizontal: 15,
                        vertical: 20,
                      ),
                      child: Text(
                        format(totalSeconds).substring(5, 7),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.surface,
                          fontSize: 89,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => setTimerMinutes(15),
                        child: Container(
                          decoration: selectedKey == 15
                              ? selectedBoxDecoration
                              : notSelectedBoxDecoration,
                          child: Padding(
                            padding: EdgeInsetsGeometry.symmetric(
                              vertical: 5,
                              horizontal: 15,
                            ),
                            child: Text(
                              '15',
                              style: TextStyle(
                                color: selectedKey == 15
                                    ? Theme.of(context).colorScheme.surface
                                    : Theme.of(context).cardColor,
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () => setTimerMinutes(20),
                        child: Container(
                          decoration: selectedKey == 20
                              ? selectedBoxDecoration
                              : notSelectedBoxDecoration,
                          child: Padding(
                            padding: EdgeInsetsGeometry.symmetric(
                              vertical: 5,
                              horizontal: 15,
                            ),
                            child: Text(
                              '20',
                              style: TextStyle(
                                color: selectedKey == 20
                                    ? Theme.of(context).colorScheme.surface
                                    : Theme.of(context).cardColor,
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () => setTimerMinutes(25),
                        child: Container(
                          decoration: selectedKey == 25
                              ? selectedBoxDecoration
                              : notSelectedBoxDecoration,
                          child: Padding(
                            padding: EdgeInsetsGeometry.symmetric(
                              vertical: 5,
                              horizontal: 15,
                            ),
                            child: Text(
                              '25',
                              style: TextStyle(
                                color: selectedKey == 25
                                    ? Theme.of(context).colorScheme.surface
                                    : Theme.of(context).cardColor,
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () => setTimerMinutes(30),
                        child: Container(
                          decoration: selectedKey == 30
                              ? selectedBoxDecoration
                              : notSelectedBoxDecoration,
                          child: Padding(
                            padding: EdgeInsetsGeometry.symmetric(
                              vertical: 5,
                              horizontal: 15,
                            ),
                            child: Text(
                              '30',
                              style: TextStyle(
                                color: selectedKey == 30
                                    ? Theme.of(context).colorScheme.surface
                                    : Theme.of(context).cardColor,
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () => setTimerMinutes(35),
                        child: Container(
                          decoration: selectedKey == 35
                              ? selectedBoxDecoration
                              : notSelectedBoxDecoration,
                          child: Padding(
                            padding: EdgeInsetsGeometry.symmetric(
                              vertical: 5,
                              horizontal: 15,
                            ),
                            child: Text(
                              '35',
                              style: TextStyle(
                                color: selectedKey == 35
                                    ? Theme.of(context).colorScheme.surface
                                    : Theme.of(context).cardColor,
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      iconSize: 120,
                      color: Theme.of(context).cardColor,
                      onPressed: isRunning ? onPausePressed : onStartPressed,
                      icon: Icon(
                        isRunning
                            ? Icons.pause_circle_outline
                            : Icons.play_circle_outline,
                      ),
                    ),
                    IconButton(
                      iconSize: 120,
                      color: Theme.of(context).cardColor,
                      onPressed: onResetPressed,
                      icon: Icon(Icons.restore_outlined),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '$round/4',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).textTheme.bodyMedium?.color,
                      ),
                    ),
                    Text(
                      'ROUND',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Theme.of(context).cardColor,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '$goal/12',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).textTheme.bodyMedium?.color,
                      ),
                    ),
                    Text(
                      'GOAL',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Theme.of(context).cardColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
