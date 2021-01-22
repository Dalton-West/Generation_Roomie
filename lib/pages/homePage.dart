import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:generation_roomie/consts.dart';

class HomePage extends StatefulWidget {
  static const String id = 'HomePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generation Roomie'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: kColorCharcoal,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
            DrawerItem(iconName: FaIcon(FontAwesomeIcons.commentAlt),)
            ListTile(
              leading: FaIcon(FontAwesomeIcons.userCircle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.cog),
              title: Text('Settings'),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.signOutAlt),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}


