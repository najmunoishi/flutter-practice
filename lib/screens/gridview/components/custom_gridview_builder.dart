import 'package:flutter/material.dart';
import 'package:practice/screens/gridview/details_screen.dart';

class CustomGridView extends StatelessWidget {
  CustomGridView({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => DetailsScreen(showdetails: title)),
        );
      },
      child: Container(
        height: 80,
        width: 180,
        color: Colors.green,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
