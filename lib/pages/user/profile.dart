import 'package:flutter/material.dart';
import 'package:generation_roomie/consts.dart';
import 'package:generation_roomie/UI/rounded_buttons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ProfilePage extends StatefulWidget {
  static const String id = 'profile';
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String userName = 'John Doe';
  String userEmail = 'john.doe.123@email.com';
  String userPhoneNumber = '(555)-555-0123';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBar(title: Text('Profile'),),
          CircleAvatar(
            backgroundColor: kColorBurntSienna,
            radius: 75.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [FaIcon(FontAwesomeIcons.user, color: Colors.white,size: 16.0,),Text('Name: '), Text(userName),],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [FaIcon(FontAwesomeIcons.mobileAlt, color: Colors.white,size: 16.0,),Text('Phone Number: '), Text(userPhoneNumber),],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [FaIcon(FontAwesomeIcons.envelope, color: Colors.white,size: 16.0,),Text('Email: '), Text(userEmail),],),
          RoundedButton(
            text: 'Edit Profile',
                  color: kColorBurntSienna,
                  onPressed: () {
                    // TODO: EDIT Profile
                    print('Edit Profile Pressed');
                  },
                ),
        ],
      ),
    );
  }
}