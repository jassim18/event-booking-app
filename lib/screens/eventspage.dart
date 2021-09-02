import 'package:flutter/material.dart';

import 'DrawerWidget.dart';

class events extends StatefulWidget {
  @override
  _eventsState createState() => _eventsState();
}

class _eventsState extends State<events> {
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
         drawer: DrawerWidget(),
        appBar: AppBar(title: Text('SHRISTI'),),

        body: Center(
          child: Text(
              'events'
          ),
        ),

    );
  }
}
