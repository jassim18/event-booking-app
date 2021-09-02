import 'package:flutter/material.dart';

class pap extends StatefulWidget {
  @override
  _papState createState() => _papState();
}

class _papState extends State<pap> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(

        appBar: AppBar(title: Text('Paper Presentation'),automaticallyImplyLeading: false,),
        body:  Center(child:
        Text(
            'Will be uploaded soon'
        ),
        )


    );
  }
}
