import 'package:flutter/material.dart';
import 'package:generation_roomie/consts.dart';
import 'package:generation_roomie/UI/rounded_buttons.dart';

class OnboardingPage extends StatefulWidget {
  static const String id = 'OnboardingPage';
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  // Create Function to check onboarding
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Onboarding Process'),
        ),
        body: Container(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text('How much does your rent cost?'),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Cost of Rent',
                    hintText: 'Cost of Rent',
                    ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter data';
                    }
                    print(value);
                    return null;
                  },
                ),
                Text('How many roommates do you have?'),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Number of Roommates ',
                    hintText: 'Number of Roommates',
                    ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter data';
                    }
                    print(value);
                    return null;
                  },
                ),
                Text('Do you and your roommates pay the bills?'),
                RoundedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Submiting info')));
                    }
                  },
                  text: 'Submit',
                  color: kColorBurntSienna,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
