import 'package:flutter/material.dart';
import 'package:practice/screens/custom_drawer/components/drawer_tile.dart';

class DrawerScreen extends StatelessWidget {
  //final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Drawer Tile Design"),
      ),
      body: Center(
        child: Builder(builder: (context) {
          return ElevatedButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            child: Text(
              "Open Drawer",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          );
        }),
      ),
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
                      "Influxdev",
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
                    DrawerTile(
                      title: "Outbox",
                      icon: Icons.share,
                    ),
                    DrawerTile(
                      title: "Favorites",
                      icon: Icons.favorite,
                    ),
                    DrawerTile(
                      title: "Archive",
                      icon: Icons.download,
                    ),
                    DrawerTile(
                      title: "Trash",
                      icon: Icons.delete,
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
                padding: EdgeInsets.only(
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
                    DrawerTile(
                      title: "Family",
                      icon: Icons.people,
                    ),
                    DrawerTile(
                      title: "Friends",
                      icon: Icons.people,
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
