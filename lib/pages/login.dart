import 'package:flutter/material.dart';
import 'package:generation_roomie/consts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:generation_roomie/UI/rounded_buttons.dart';
import 'package:generation_roomie/pages/register.dart';
import 'package:generation_roomie/pages/homePage.dart';

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
                    hintText: 'Username',
                    icon: FaIcon(
                      FontAwesomeIcons.user,
                      color: kColorSandyBrown,
                      size: 30.0,
                    ),
                  ),
                ),
                TextField(
                  decoration: kTextInputBox.copyWith(
                    hintText: 'Password',
                    errorText: 'Wrong Password',
                    icon: FaIcon(
                      FontAwesomeIcons.key,
                      color: kColorSandyBrown,
                      size: 30.0,
                    ),
                  ),
                ),
                // Add Input Boxes
                RoundedButton(
                  color: kColorBurntSienna,
                  onPressed: () {
                    Navigator.pushNamed(context, HomePage.id);
                    print('Login Button');
                  },
                  text: 'Login',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: HyperLink(
                        text: 'Forgot Password',
                        onTap: () {
                          print('Forgot password link');
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: HyperLink(
                        text: 'Register',
                        onTap: () {
                          print('Register Link');
                          Navigator.pushNamed(context, Register.id);
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
