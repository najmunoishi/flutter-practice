import 'package:flutter/material.dart';
import 'package:practice/screens/gridview/gridview_screen.dart';
import 'package:practice/screens/listview/listview_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Menu Screen",
          style: TextStyle(
            fontSize: 26,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => GridViewScreen(),
                    ),
                  );
                }
              },
              child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(
                    left: 50,
                    right: 50,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "GRID VIEW / 1st DESIGN",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
            ),
            GestureDetector(
              onTap: () {
                {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ListViewScreen(),
                    ),
                  );
                }
              },
              child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(
                    left: 50,
                    right: 50,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "LIST VIEW / 2nd DESIGN",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
