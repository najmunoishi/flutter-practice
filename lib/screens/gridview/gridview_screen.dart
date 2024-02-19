import 'package:flutter/material.dart';
import 'package:practice/screens/gridview/components/custom_gridview_builder.dart';
import 'package:practice/screens/gridview/details_screen.dart';

class GridViewScreen extends StatelessWidget {
  GridViewScreen({Key? key}) : super(key: key);
  List<String> numberStrings = [
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
    'Ten',
    'Eleven',
    'Twelve',
    'Thirteen',
    'Fourteen',
    'Fifteen',
    'Sixteen',
    'Seventeen',
    'Eighteen',
    'Nineteen',
    'Twenty',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Grid View Design",
          style: TextStyle(
            fontSize: 26,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 4 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: numberStrings.length,
          itemBuilder: (context, index) {
            return CustomGridView(
              title: numberStrings[index],
            );
            
          },
        ),
      ),
    );
  }
}
