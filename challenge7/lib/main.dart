import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF1f1f1f),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/sample.jpg'),
                        ),
                      ),
                    ),
                    Icon(Icons.add, color: Colors.white, size: 50),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  'MONDAY 16',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Text(
                        'TODAY',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      Text(
                        ' • ',
                        style: TextStyle(color: Colors.purple, fontSize: 40),
                      ),
                      Text(
                        '17  ',
                        style: TextStyle(
                          color: Color.fromRGBO(143, 143, 143, 1),
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        '18  ',
                        style: TextStyle(
                          color: Color.fromRGBO(143, 143, 143, 1),
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        '19  ',
                        style: TextStyle(
                          color: Color.fromRGBO(143, 143, 143, 1),
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        '20',
                        style: TextStyle(
                          color: Color.fromRGBO(143, 143, 143, 1),
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xfffef754),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Padding(
                    padding: EdgeInsetsGeometry.directional(
                      start: 15,
                      top: 25,
                      bottom: 12,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text('11', style: TextStyle(fontSize: 25)),
                            Text(
                              '30',
                              style: TextStyle(fontSize: 15, height: 0.5),
                            ),
                            Text('|', style: TextStyle(fontSize: 25)),
                            Text('12', style: TextStyle(fontSize: 25)),
                            Text(
                              '20',
                              style: TextStyle(fontSize: 15, height: 0.5),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'DESIGN\nMETTING',
                              style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.w500,
                                height: 1.0,
                              ),
                            ),
                            SizedBox(height: 30),
                            Row(
                              children: [
                                Text(
                                  'ALEX',
                                  style: TextStyle(color: Color(0xffa39e2d)),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  'HELENA',
                                  style: TextStyle(color: Color(0xffa39e2d)),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  'NANA',
                                  style: TextStyle(color: Color(0xffa39e2d)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff9c6bce),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Padding(
                    padding: EdgeInsetsGeometry.directional(
                      start: 15,
                      top: 25,
                      bottom: 12,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text('12', style: TextStyle(fontSize: 25)),
                            Text(
                              '35',
                              style: TextStyle(fontSize: 15, height: 0.5),
                            ),
                            Text('|', style: TextStyle(fontSize: 25)),
                            Text('14', style: TextStyle(fontSize: 25)),
                            Text(
                              '10',
                              style: TextStyle(fontSize: 15, height: 0.5),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'DAILY\nPROJECT',
                              style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.w500,
                                height: 1.0,
                              ),
                            ),
                            SizedBox(height: 30),
                            Row(
                              children: [
                                Text(
                                  'ME',
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  'RICHARD',
                                  style: TextStyle(color: Color(0xff68438b)),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  'CIRY',
                                  style: TextStyle(color: Color(0xff68438b)),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  '+4',
                                  style: TextStyle(color: Color(0xff68438b)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffbcee4b),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Padding(
                    padding: EdgeInsetsGeometry.directional(
                      start: 15,
                      top: 25,
                      bottom: 12,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text('15', style: TextStyle(fontSize: 25)),
                            Text(
                              '00',
                              style: TextStyle(fontSize: 15, height: 0.5),
                            ),
                            Text('|', style: TextStyle(fontSize: 25)),
                            Text('16', style: TextStyle(fontSize: 25)),
                            Text(
                              '30',
                              style: TextStyle(fontSize: 15, height: 0.5),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'WEEKLY\nPLANNING',
                              style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.w500,
                                height: 1.0,
                              ),
                            ),
                            SizedBox(height: 30),
                            Row(
                              children: [
                                Text(
                                  'DEN',
                                  style: TextStyle(color: Color(0xff71941d)),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  'NANA',
                                  style: TextStyle(color: Color(0xff71941d)),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  'MARK',
                                  style: TextStyle(color: Color(0xff71941d)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
