import 'package:flutter/material.dart';
// Theme Colors
const Color kColorCharcoal = Color(0xFF264653);
const Color kColorPersiangreen = Color(0xFF2A9D8F);
const Color kColorOrangeYellow = Color(0xFFE9C46A);
const Color kColorSandyBrow = Color(0xFFF4A261);
const Color kColorBurntSienna = Color(0xFFE76F51);
// Define Text Styles
const TextStyle kWelcomeText = TextStyle(color: Colors.white,fontFamily: 'Bellota', fontSize: 30.0, fontWeight: FontWeight.bold);
const TextStyle kbuttonText = TextStyle(color: Colors.white,fontFamily: 'Bellota', fontSize: 18.0,);
const TextStyle kHyperlinks = TextStyle(decoration: TextDecoration.underline,color: kColorOrangeYellow);


// Custom Features
class HyperLink extends StatelessWidget {
  HyperLink({@required this.text,@required  this.onTap});
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Text(text,
            style: kHyperlinks),
        onTap: onTap);
  }
}
// Define UI Layouts
class CustomUI {
  
}
