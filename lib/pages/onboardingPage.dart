import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(
                        padding: EdgeInsets.all(5.0),
                        textColor: Colors.white,
                        color: kColorBurntSienna,
                        onPressed: (){},
                        child: Text('Yes'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(
                        padding: EdgeInsets.all(5.0),
                        textColor: Colors.white,
                        color: kColorBurntSienna,
                        onPressed: (){},
                        child: Text('No'),
                      ),
                    ),
                  ],
                ),
                // If yes show picker else none
                Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  spacing: 10.0,
                  runSpacing: 5.0,
                  children: [
                    FlatButton(
                      textColor: Colors.white,
                      onPressed: (){},
                      child: Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.tv,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          Text('Cable TV'),
                        ],
                      ),
                    ),
                    FlatButton(
                      textColor: Colors.white,
                      onPressed: (){},
                      child: Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.wifi,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          Text('Internet'),
                        ],
                      ),
                    ),
                    FlatButton(
                      textColor: Colors.white,
                      onPressed: (){},
                      child: Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.leaf,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          Text('Lawn Care'),
                        ],
                      ),
                    ),
                    FlatButton(
                      textColor: Colors.white,
                      onPressed: (){},
                      child: Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.faucet,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          Text('Water'),
                        ],
                      ),
                    ),
                    FlatButton(
                      textColor: Colors.white,
                      onPressed: (){},
                      child: Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.fireAlt,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          Text('Gas'),
                        ],
                      ),
                    ),
                    FlatButton(
                      textColor: Colors.white,
                      onPressed: (){},
                      child: Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.dumpster,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          Text('Trash'),
                        ],
                      ),
                    ),
                    FlatButton(
                      textColor: Colors.white,
                      onPressed: (){},
                      child: Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.bolt,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          Text('Eletric'),
                        ],
                      ),
                    ),
                    FlatButton(
                      textColor: Colors.white,
                      onPressed: (){},
                      child: Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.fish,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          Text('Sewer'),
                        ],
                      ),
                    ),
                    FlatButton(
                      textColor: Colors.white,
                      onPressed: (){},
                      child: Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.camera,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          Text('Security'),
                        ],
                      ),
                    ),
                    FlatButton(
                      textColor: Colors.white,
                      onPressed: (){},
                      child: Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.phone,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          Text('Phone'),
                        ],
                      ),
                    ),
                    FlatButton(
                      textColor: Colors.white,
                      onPressed: (){},
                      child: Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.mobileAlt,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          Text('Cell Phone'),
                        ],
                      ),
                    ),
                    FlatButton(
                      textColor: Colors.white,
                      onPressed: (){},
                      child: Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.ellipsisH,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          Text('Other'),
                        ],
                      ),
                    ),
                  ],
                ),
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
