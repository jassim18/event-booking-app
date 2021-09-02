import 'package:flutter/material.dart';

import 'DrawerWidget.dart';

class teams extends StatefulWidget {
  @override
  _teamsState createState() => _teamsState();
}

class _teamsState extends State<teams> {
  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
      appBar: AppBar(title: Text('Our Team'),automaticallyImplyLeading: false,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              color: Colors.black38,
              child:   Column(
                children: [
                  Container(
                    width: 500,
                    height: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/PSG icon.png',
                        ),
                        fit: BoxFit.fill,

                      ),
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.only(top: 50.0),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0,bottom: 50),
                    child: Text(
                      "Person 1",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.8),
                          fontSize: 38.0,
                          height: 1.4,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    color: Colors.grey,
                    child: ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('+44 4745121545451'),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    color: Colors.grey,
                    child: ListTile(
                      leading: Icon(Icons.mail),
                      title: Text('abc@gmail.com'),
                    ),
                  ),],
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              color: Colors.black38,
              child:   Column(
                children: [
                  Container(
                    width: 500,
                    height: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/PSG icon.png',
                        ),
                        fit: BoxFit.fill,

                      ),
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.only(top: 50.0),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0,bottom: 50),
                    child: Text(
                      "Person 1",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.8),
                          fontSize: 38.0,
                          height: 1.4,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    color: Colors.grey,
                    child: ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('+44 4745121545451'),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    color: Colors.grey,
                    child: ListTile(
                      leading: Icon(Icons.mail),
                      title: Text('abc@gmail.com'),
                    ),
                  ),],
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              color: Colors.black38,
              child:   Column(
                children: [
                  Container(
                    width: 500,
                    height: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/PSG icon.png',
                        ),
                        fit: BoxFit.fill,

                      ),
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.only(top: 50.0),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0,bottom: 50),
                    child: Text(
                      "Person 1",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.8),
                          fontSize: 38.0,
                          height: 1.4,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    color: Colors.grey,
                    child: ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('+44 4745121545451'),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    color: Colors.grey,
                    child: ListTile(
                      leading: Icon(Icons.mail),
                      title: Text('abc@gmail.com'),
                    ),
                  ),],
              ),
            ),


          ],
        ),
      )

    );
  }
}
