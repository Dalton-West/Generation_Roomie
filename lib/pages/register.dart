import 'package:flutter/material.dart';
import 'package:generation_roomie/consts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:generation_roomie/UI/rounded_buttons.dart';
import 'package:generation_roomie/pages/login.dart';
import 'package:generation_roomie/pages/homePage.dart';

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
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image.asset('icon.svg'),
                Hero(
                  tag: 'Logo',
                  child: FaIcon(
                    FontAwesomeIcons.users,
                    size: 120.0,
                    color: Colors.white,
                  ),
                ),
                TextField(
                  decoration: kTextInputBox.copyWith(
                    hintText: 'Enter your email address',
                    errorText: 'Email already registered',
                    icon: FaIcon(
                      FontAwesomeIcons.user,
                      color: kColorSandyBrown,
                      size: 30.0,
                    ),
                  ),
                ),
                TextField(
                  decoration: kTextInputBox.copyWith(
                    hintText: 'Create a password',
                    icon: FaIcon(
                      FontAwesomeIcons.key,
                      color: kColorSandyBrown,
                      size: 30.0,
                    ),
                  ),
                ),
                RoundedButton(
                  color: kColorBurntSienna,
                  onPressed: () {
                    Navigator.pushNamed(context, HomePage.id);
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
      ),
    );
  }
}
