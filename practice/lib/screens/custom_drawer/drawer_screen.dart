import 'package:flutter/material.dart';
import 'package:practice/screens/custom_drawer/components/drawer_tile.dart';

class DrawerScreen extends StatelessWidget {
  DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  top: 50,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Influx",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Batch 2",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    DrawerTile(
                      title: "Inbox",
                      icon: Icons.mail,
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    DrawerTile(
                      title: "Outbox",
                      icon: Icons.share,
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    DrawerTile(
                      title: "Favorites",
                      icon: Icons.favorite,
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    DrawerTile(
                      title: "Archive",
                      icon: Icons.download,
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    DrawerTile(
                      title: "Trash",
                      icon: Icons.delete,
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    DrawerTile(
                      title: "Spam",
                      icon: Icons.dangerous,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                height: 3,
                color: Colors.grey,
                thickness: 1,
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  "Labels",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    DrawerTile(
                      title: "Family",
                      icon: Icons.people,
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    DrawerTile(
                      title: "Friends",
                      icon: Icons.people,
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    DrawerTile(
                      title: "Work",
                      icon: Icons.work,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                height: 3,
                color: Colors.grey,
                thickness: 1,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: DrawerTile(
                  title: "Settings & account",
                  icon: Icons.settings,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
