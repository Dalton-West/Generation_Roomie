import 'package:flutter/material.dart';
import 'package:generation_roomie/consts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:generation_roomie/UI/rounded_buttons.dart';
import 'package:generation_roomie/pages/login.dart';

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
              TextField(
                decoration: kTextInputBox.copyWith(
                    hintText: 'Enter your email address'),
              ),
              TextField(
                decoration:
                    kTextInputBox.copyWith(hintText: 'Create a password'),
              ),
              RoundedButton(
                color: kColorBurntSienna,
                onPressed: () {
                  print('Reg Button');
                },
                text: 'Register ',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HyperLink(
                      text: 'Privacy Policy',
                      onTap: () {
                        print('Privacy Policy');
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HyperLink(
                      text: 'Login',
                      onTap: () {
                        Navigator.pushNamed(context, Login.id);
                        print('Login Text');
                      },
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
