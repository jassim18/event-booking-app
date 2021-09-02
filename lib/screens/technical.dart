import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import '../DashBoard.dart';
import 'DrawerWidget.dart';
import 'description.dart';

class tech extends StatefulWidget {
  String mailid;


  tech({Key key, @required this.mailid}) : super(key: key);
  @override
  _techState createState() => _techState();
}

class _techState extends State<tech> {
  Future register(String mailid,  string ) async {

    var url = Uri.parse("https://shristi2k21.000webhostapp.com/login/book.php");
    var response = await http.post(url, body: {
      "username": mailid,
      "password": string,
    });
    var message = "Error";
    var data = json.decode(response.body);
    print(data);
    if (data == message) {
      Fluttertoast.showToast(
          msg: "Event Already Registered!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    } else {
      Fluttertoast.showToast(
          msg: "Registration Successful",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0
      );

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Technical Events'),automaticallyImplyLeading: false,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              color: Colors.black,
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.construction,color: Colors.yellowAccent,),
                    title: const Text('TECHNOFRENZY',style:
                      TextStyle(color: Colors.white),),
                    subtitle: Text(
                      'Technical Fest',
                      style: TextStyle(color: Colors.white.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Taste the relish to be found in competition -- in having put forth the best within you.',
                      style: TextStyle(color: Colors.white.withOpacity(0.6)),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        child: Text('REGISTER'),
                        onPressed: () {
                          String event = "TECHNOFRENZY";
                          register(widget.mailid,event);
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: Colors.pink,
                        textColor: Colors.white,
                      ),
                      FlatButton(
                        child: Text('KNOW MORE'),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => desc()),
                          );
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: Colors.pink,
                        textColor: Colors.white,
                      )
                    ],
                  ),
                  Image.asset('assets/tech1.png',fit: BoxFit.fill),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Card(
              color: Colors.black,
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.construction,color: Colors.yellowAccent,),
                    title: const Text('Elecdown',style:
                    TextStyle(color: Colors.white),),
                    subtitle: Text(
                      'Technical Fest',
                      style: TextStyle(color: Colors.white.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Taste the relish to be found in competition -- in having put forth the best within you.',
                      style: TextStyle(color: Colors.white.withOpacity(0.6)),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        child: Text('REGISTER'),
                        onPressed: () {
                          String event = "Elecdown";
                          register(widget.mailid,event);
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: Colors.pink,
                        textColor: Colors.white,
                      ),
                      FlatButton(
                        child: Text('KNOW MORE'),
                        onPressed: () {  Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => desc()),
                        );},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: Colors.pink,
                        textColor: Colors.white,
                      )
                    ],
                  ),
                  Image.asset('assets/tech1.png',fit: BoxFit.fill),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Card(
              color: Colors.black,
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.construction,color: Colors.yellowAccent,),
                    title: const Text('Quizzard',style:
                    TextStyle(color: Colors.white),),
                    subtitle: Text(
                      'Technical Fest',
                      style: TextStyle(color: Colors.white.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Taste the relish to be found in competition -- in having put forth the best within you.',
                      style: TextStyle(color: Colors.white.withOpacity(0.6)),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      FlatButton(
                        child: Text('REGISTER'),
                        onPressed: () {
                          String event = "Quizzard";
                          register(widget.mailid,event);
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: Colors.pink,
                        textColor: Colors.white,
                      ),
                      FlatButton(
                        child: Text('KNOW MORE'),
                        onPressed: () {  Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => desc()),
                        );},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: Colors.pink,
                        textColor: Colors.white,
                      )
                    ],
                  ),
                  Image.asset('assets/tech1.png',fit: BoxFit.fill),
                ],
              ),
            ),
            SizedBox(height: 30,),

          ],
        ),
      )

    );
  }
}
