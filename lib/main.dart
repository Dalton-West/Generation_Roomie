import 'package:flutter/material.dart';
import 'package:generation_roomie/consts.dart';
import 'package:generation_roomie/pages/register.dart';
import 'package:generation_roomie/pages/welcome.dart';
import 'package:generation_roomie/pages/login.dart';
import 'package:generation_roomie/pages/homePage.dart';
import 'package:generation_roomie/pages/user/profile.dart';

void main() {
  runApp(GenerationRoomie());
}

class GenerationRoomie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generation Roomie',
      theme: ThemeData(
        primaryColor: kColorCharcoal,
        scaffoldBackgroundColor: kColorPersiangreen,
        canvasColor: kColorPersiangreen,
        accentColor: kColorBurntSienna,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      // TODO: Change To Welcome When Done Designing
      initialRoute: Welcome.id,
      routes: {
        Welcome.id: (context) => Welcome(),
        Login.id: (context) => Login(),
        Register.id: (context) => Register(),
        HomePage.id: (context) => HomePage(),
        ProfilePage.id: (context) => ProfilePage(),
      },
    );
  }
}


