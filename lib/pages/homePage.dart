import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:generation_roomie/consts.dart';
import 'package:generation_roomie/pages/onboardingPage.dart';
import 'package:generation_roomie/pages/user/profile.dart';

class HomePage extends StatefulWidget {
  static const String id = 'HomePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generation Roomie'),
      ),
      drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: kCharcoalPearsian,
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
            title: Text('Onboarding'),
            onTap: (){
              Navigator.pushNamed(context, OnboardingPage.id);
            },
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
            trailing: FaIcon(FontAwesomeIcons.caretRight, color: Colors.white,),
            onTap: (){},
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.userCircle,color: Colors.white,),
            title: Text('Profile',style: TextStyle(color: Colors.white),),
            trailing: FaIcon(FontAwesomeIcons.caretRight, color: Colors.white,),
            onTap: (){
              Navigator.pushNamed(context, ProfilePage.id);
            },
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
            trailing: FaIcon(FontAwesomeIcons.caretRight, color: Colors.white,),
            onTap: (){},
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
            trailing: FaIcon(FontAwesomeIcons.caretRight, color: Colors.white,),
            onTap: (){},
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
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.bell),
            label: 'Notices',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.commentAlt),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.cog),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kColorBurntSienna,
        onTap: _onItemTapped,
      ),
      );
  }
}
