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
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.commentAlt,
                color: Colors.white,
              ),
              title: Text(
                'Messages',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.userCircle,
                color: Colors.white,
              ),
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.cog,
                color: Colors.white,
              ),
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.signOutAlt,
                color: Colors.white,
              ),
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 125.0,
                      width: 250.0,
                      decoration: kContainerDecoration,
                      child: Column(
                        children: [Text('Important Info Cell 1')],
                      ),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Container(
                      height: 125.0,
                      width: 250.0,
                      decoration: kContainerDecoration,
                      child: Column(
                        children: [Text('Important Info Cell 2')],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            // TODO: Add UI Mockup
            Container(
                      height: 125.0,
                      width: 250.0,
                      decoration: kContainerDecoration,
                      child: Column(
                        children: [Text('New Column 1')],
                      ),
            ),
             Container(
                      height: 125.0,
                      width: 250.0,
                      decoration: kContainerDecoration,
                      child: Column(
                        children: [Text('New Column 2')],
                      ),
            ),
             Container(
                      height: 125.0,
                      width: 250.0,
                      decoration: kContainerDecoration,
                      child: Column(
                        children: [Text('New Column 3')],
                      ),
            ),
             Container(
                      height: 125.0,
                      width: 250.0,
                      decoration: kContainerDecoration,
                      child: Column(
                        children: [Text('New Column 4')],
                      ),
            ),
             Container(
                      height: 125.0,
                      width: 250.0,
                      decoration: kContainerDecoration,
                      child: Column(
                        children: [Text('New Column 5')],
                      ),
            ),
          ],
          // TODO: Add Footer navigation
        ),
      ),
    );
  }
}
// TODO: Create User Profile page