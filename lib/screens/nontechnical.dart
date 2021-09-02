import 'package:flutter/material.dart';

import 'DrawerWidget.dart';

class nontech extends StatefulWidget {
  @override
  _nontechState createState() => _nontechState();
}

class _nontechState extends State<nontech> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Non-Technical Events'),automaticallyImplyLeading: false,),
      body: Center(
        child: Text(
            'Will be uploaded soon'
        ),
      ),

    );
  }
}
