import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({Key? key, required this.title, required this.icon})
      : super(key: key);
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 30,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            top:16,
            bottom: 16,
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
