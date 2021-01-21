import 'package:flutter/material.dart';
import 'package:generation_roomie/consts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:generation_roomie/UI/rounded_buttons.dart';

class Register extends StatefulWidget {
  static const String id = 'register';
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset('icon.svg'),
              FaIcon(
                FontAwesomeIcons.users,
                size: 120.0,
                color: Colors.white,
              ),
              Text(
                'Generation Roommate'.toUpperCase(),
                style: kWelcomeText,
              ),
              // Add Input Boxes
              RoundedButton(
                color: kColorBurntSienna,
                onPressed: () {},
                text: 'Register ',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HyperLink(
                      text: 'Privacy Policy',
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HyperLink(
                      text: 'Login',
                      onTap: () {},
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
