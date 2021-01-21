import 'package:flutter/material.dart';
import 'package:generation_roomie/consts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:generation_roomie/UI/rounded_buttons.dart';

class Login extends StatefulWidget {
  static const String id = 'login';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                text: 'Login',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HyperLink(
                      text: 'Forgot Password',
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HyperLink(
                      text: 'Register',
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
