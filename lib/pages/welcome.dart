import 'package:flutter/material.dart';
import 'package:generation_roomie/consts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:generation_roomie/UI/rounded_buttons.dart';
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset('icon.svg'),
              FaIcon(FontAwesomeIcons.users, size: 120.0, color: Colors.white,),
              Text('Generation Roommate'.toUpperCase(), style: kWelcomeText,),
              RoundedButton(
                color: kColorBurntSienna,
                onPressed: () {},
                text: 'Login',
                ),
                RoundedButton(
                color: kColorBurntSienna,
                onPressed: () {},
                text: 'Register',
                ),
              // TODO: Add functionality to Login & Register Buttons
            ],
          ),
        ),
      ),
    );
  }
}