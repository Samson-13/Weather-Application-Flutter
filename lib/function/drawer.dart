import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class DrawerStyle extends StatefulWidget {
  const DrawerStyle({Key? key}) : super(key: key);

  @override
  State<DrawerStyle> createState() => _DrawerStyleState();
}

class _DrawerStyleState extends State<DrawerStyle> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 150, // Set the desired height for the DrawerHeader
            decoration: BoxDecoration(
              color: Colors.black12,
            ),
            child: DrawerHeader(
              child: Center(
                child: Text(
                  'We Chat',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  title: const Text('Privacy'),
                  onTap: () {
                    // Update the state of the app.
                  },
                  leading: Icon(
                    LineIcons.userShield,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: const Text('Settings'),
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => SettingsPage()),
                    // );
                  },
                  leading: Icon(
                    LineIcons.wrench,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: const Text('Favourites'),
                  onTap: () {
                    // Update the state of the app.
                  },
                  leading: Icon(
                    LineIcons.star,
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: const Text('About Us'),
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => AboutUsPage()),
                    // );
                  },
                  leading: Icon(
                    LineIcons.infoCircle,
                    color: Colors.black,
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
