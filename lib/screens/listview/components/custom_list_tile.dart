import 'package:flutter/material.dart';
import 'package:practice/screens/listview/details_screen.dart';
import 'package:practice/screens/listview/listview_screen.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile({
    Key? key,
    required this.contactAllDetails,
    //required this.onTap,
  }) : super(key: key);

  final Contacts contactAllDetails;
  //final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsScreen(details: contactAllDetails),
              //contact_details[index]),
            ),
          );
        },
        child: ListTile(
          leading: CircleAvatar(
            radius: 38,
            child: Text(
                style: TextStyle(
                  fontSize: 22,
                ),
                contactAllDetails.name[0].toUpperCase()),
          ),
          title: Text(
            contactAllDetails.name,
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          subtitle: Text(
            contactAllDetails.email,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          //onTap: onTap,
        ),
      ),
    );
  }
}
