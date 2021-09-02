import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'DrawerWidget.dart';
import 'package:http/http.dart' as http;

import 'description.dart';
class workshops extends StatefulWidget {
  String mailid;


  workshops({Key key, @required this.mailid}) : super(key: key);
  @override
  _workshopsState createState() => _workshopsState();
}

class _workshopsState extends State<workshops> {
  Future register(String mailid,  string ) async {
      print(string);
    var url = Uri.parse("https://shristi2k21.000webhostapp.com/login/wbook.php");
      print(string);
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
    return

      Scaffold(

          appBar: AppBar(title: Text('Workshop'),automaticallyImplyLeading: false,),
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
                        title: const Text('IOT',style:
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
                              String event = "IOT";
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
                        title: const Text('Industry',style:
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
                              String event = "Industry";
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
                        title: const Text('robotics',style:
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
                              String event = "robotics";
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
