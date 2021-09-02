import 'package:flutter/material.dart';

import 'DrawerWidget.dart';

class webinar extends StatefulWidget {
  @override
  _webinarState createState() => _webinarState();
}

class _webinarState extends State<webinar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Flagship Events'),automaticallyImplyLeading: false,),
      body: Center(
        child: Text(
            'Will be uploaded soon'
        ),
      ),

    );
  }
}
