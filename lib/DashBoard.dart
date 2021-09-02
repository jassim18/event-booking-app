

import 'package:eventassign/screens/DrawerWidget.dart';
import 'package:eventassign/screens/aboutpage.dart';
import 'package:eventassign/screens/contactpage.dart';
import 'package:eventassign/screens/eventspage.dart';
import 'package:eventassign/screens/homepage.dart';
import 'package:eventassign/screens/teamspage.dart';
import 'package:eventassign/screens/workshoppage.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  final String mail;
  DashBoard({Key key, @required this.mail}) : super(key: key);

 // @override
  //_DashBoardState createState() => _DashBoardState();
//}

//class _DashBoardState extends State<DashBoard> {
  int currentIndex = 0;


  goBack(BuildContext context){
    Navigator.pop(context);
  }
  void navigateToScreens(int index) {
    currentIndex = index;
  }
  final List<Widget> viewContainer = [

    homepage(),
    events(),
    workshops(),
    about(),
    teams(),
    contact(),

  ];


  @override

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: Text('Home'),),
        drawer: DrawerWidget( mail: mail,),
        body: homepage(),

      ),
    );

  }
}