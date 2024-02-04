import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Assignment 4, 5",
            style: TextStyle(fontSize: 24),
          ),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(40),
              margin: EdgeInsets.fromLTRB(
                80,
                20,
                80,
                20,
              ),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(
                        255,
                        200,
                        197,
                        197,
                      ),
                      offset: Offset(0, 8),
                    ),
                  ]),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Class 3 Class 4",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.yellow,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(40),
              margin: EdgeInsets.fromLTRB(
                80,
                20,
                80,
                20,
              ),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(
                        255,
                        200,
                        197,
                        197,
                      ),
                      offset: Offset(0, -8),
                    ),
                  ]),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 20,
                right: 100,
                top: 20,
                bottom: 20,
              ),
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 20,
                top: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.green,
                  width: 4,
                ),
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 6,
                    blurRadius: 12,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Text("influxdev.com",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  color: Colors.red,
                  height: 100,
                  width: 100,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Red",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(50),
                  color: Colors.purple,
                  height: 100,
                  width: 100,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Purple",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(100),
                  color: Colors.yellow,
                  height: 100,
                  width: 100,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Yellow",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
