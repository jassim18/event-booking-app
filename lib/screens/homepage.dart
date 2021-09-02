import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'signinpage.dart';
import 'package:animated_background/animated_background.dart';
import 'DrawerWidget.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {

    return
      WillPopScope(

        onWillPop: () async => showDialog(
            context: context,
            builder: (context) =>
                AlertDialog(title: Text('Are you sure you want to quit?'), actions: <Widget>[
                  RaisedButton(
                      child: Text('Yes'),
                      onPressed: () => SystemNavigator.pop()),
                  RaisedButton(
                      child: Text('cancel'),
                      onPressed: () => Navigator.of(context).pop(false)),
                ])),
        child: Scaffold(
          backgroundColor: Colors.yellowAccent,


          body: Center(
            child: SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 30.0,
                  fontFamily: 'Agne',
                ),
                child: AnimatedTextKit(
                  repeatForever: true,

                  animatedTexts: [
                    TypewriterAnimatedText('SHRISTI 2K21 WELCOMES YOU ABOARD',speed: const Duration(milliseconds: 500),),

                  ],

                ),
              ),
            ),
          )

    ),
      );
  }
}
