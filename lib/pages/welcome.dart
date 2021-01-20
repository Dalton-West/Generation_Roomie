import 'package:flutter/material.dart';
import 'package:generation_roomie/consts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Welcome extends StatefulWidget {
  static const String id = 'welcome';
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // Image.asset('icon.svg'),
              FaIcon(FontAwesomeIcons.users, size: 120.0, color: Colors.white,),
              Text('Generation Roommate', style: kWelcomeText,),
              // TODO: Add Login & Register Buttons
            ],
          ),
        ),
      ),
    );
  }
}