import 'package:flutter/material.dart';
import 'package:practice/screens/listview/details_screen.dart';

import 'components/custom_list_tile.dart';

class Contacts {
  final String name;
  final String email;
  Contacts(
    this.name,
    this.email,
  );
}

class ListViewScreen extends StatelessWidget {
  final List<Contacts> contact_details = [
    Contacts('Najmun Oishi', 'najmun.oishi@example.com'),
    Contacts('Alma Christensen', 'alma.christensen@example.com'),
    Contacts('Sergio Hill', 'sergio.hill@example.com'),
    Contacts('Malo Gonzalez', 'malo.gonzalez@example.com'),
    Contacts('Miguel Owens', 'miguel.owens@example.com'),
    Contacts('Lilou Dumont', 'lilou.dumont@example.com'),
    Contacts('Ashley Stewart', 'ashley.stewart@example.com'),
    Contacts('Roman Zhang', 'roman.zhang@example.com'),
    Contacts('Miguel Owens', 'miguel.owens@example.com'),
    Contacts('Lilou Dumont', 'lilou.dumont@example.com'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contacts",
          style: TextStyle(
            fontSize: 26,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: contact_details.length,
          itemBuilder: (context, index) {
            return CustomListTile(
              contactAllDetails: contact_details[index],
            );
          }),
    );
  }
}
