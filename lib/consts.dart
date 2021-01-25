import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Theme Colors
const Color kColorCharcoal = Color(0xFF264653);
const Color kColorPersiangreen = Color(0xFF2A9D8F);
const Color kColorOrangeYellow = Color(0xFFE9C46A);
const Color kColorSandyBrown = Color(0xFFF4A261);
const Color kColorBurntSienna = Color(0xFFE76F51);
const LinearGradient kCharcoalPearsian = LinearGradient(
  colors: <Color>[kColorCharcoal, kColorPersiangreen],
);
// Navigator Functions
Future navigator(context, routeName) {
  return Navigator.pushNamed(context, routeName);
}

// Define Text Styles
const TextStyle kWelcomeText = TextStyle(
    color: Colors.white,
    fontFamily: 'Bellota',
    fontSize: 30.0,
    fontWeight: FontWeight.bold);
const TextStyle kbuttonText = TextStyle(
  color: Colors.white,
  fontFamily: 'Bellota',
  fontSize: 18.0,
);
const TextStyle kHyperlinks =
    TextStyle(decoration: TextDecoration.underline, color: kColorOrangeYellow);

// Input styles
const kTextInputBox = InputDecoration(
  hintText: 'Enter a value',
  hintStyle: TextStyle(color: Colors.white),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kColorSandyBrown, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kColorSandyBrown, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

// Container Decoration Home !!! NOTE: Cannot invoke a non-'const' factory where a const expression is expected. = No Const constructor declared var type

BoxDecoration kContainerDecoration = BoxDecoration(
  color: Colors.white30,
  border: Border.all(
    color: kColorCharcoal,
    width: 3.14,
  ),
  borderRadius: BorderRadius.all(Radius.circular(5)),
);

// Custom Features
class HyperLink extends StatelessWidget {
  HyperLink({@required this.text, @required this.onTap});
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(child: Text(text, style: kHyperlinks), onTap: onTap);
  }
}


