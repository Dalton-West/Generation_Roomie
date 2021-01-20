import 'package:flutter/material.dart';
import 'package:generation_roomie/consts.dart';
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
        child: Column(
          children: [
            Image.asset('icon.svg'),
            Text('Generation Roommate', style: kWelcomeText,)
          ],
        ),
      ),
    );
  }
}