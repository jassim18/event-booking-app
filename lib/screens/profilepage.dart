import 'dart:convert';

import 'package:eventassign/screens/eventspage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class profile extends StatefulWidget {
  String mailid;
  profile({Key key, @required this.mailid}) : super(key: key);
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
    Future get(String mailid)async{

      var url = "https://shristi2k21.000webhostapp.com/login/profile.php";
      var response = await http.post(url, body: {
        "username": mailid,
      });

      var data=  json.decode(response.body);
      final split = data.split(',');
     final Map<int, String> values = {
        for (int i = 0; i < split.length-1; i++)
          i: split[i]
      };
      return split;

    }
    Future getw(String mailid)async{

      var url = "https://shristi2k21.000webhostapp.com/login/proworkshop.php";
      var response = await http.post(url, body: {
        "username": mailid,
      });

      var data=  json.decode(response.body);
      print(data);
      var length = data.length;
      print(length);
      /*final datum = data;*/
      final split = data.split(',');
      final Map<int, String> values = {
        for (int i = 0; i < split.length-1; i++)
          i: split[i]
      };
      print(split);
      print(values.length);

      return split;

    }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text('User Profile'),automaticallyImplyLeading: false,),
        body: SingleChildScrollView(

            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0,),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0,bottom: 50),
                  child: Text(
                   widget.mailid,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 28.0,
                        height: 1.4,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(
                  width: 300.00,
                  child: RaisedButton(onPressed: (){},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)
                      ),
                      elevation: 0.0,
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [Colors.redAccent,Colors.pinkAccent]
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Text("EVENTS",
                            style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                          ),
                        ),
                      )
                  ),
                ),//with button
                        Container(
                           child: FutureBuilder(
                               future: get(widget.mailid),
                                builder: (context, snapshot) {

                                  if (snapshot.hasData) {
                                    return Column(
                                        children: [
                                          SizedBox( height : 200,width: 300,
                                            child: ListView.builder(
                                                itemCount: snapshot.data.length,
                                              itemBuilder: (context, index) {
                                            List list = snapshot.data;

                                           /* var array = list[index]['events'];
                                            final split = array.split(',');
                                            final Map<int, String> values = {
                                              for (int i = 0; i < split.length; i++)
                                                i: split[i]
                                            };
                                            print(values);
                                            print(array);*/
                                            return
                                              ListTile(
                                                title: Text(list[index],textAlign: TextAlign.center,),
                                              );
                                                }
                                                ),
                                          ),
                                        ],
                                      );
                                  } else {
                                    return Center(child: CircularProgressIndicator(),);
                                  }
                                },
                                 ),
                        ),//events
                Container(
                  width: 300.00,
                  child: RaisedButton(onPressed: (){},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)
                      ),
                      elevation: 0.0,
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [Colors.redAccent,Colors.pinkAccent]
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Text("WORKSHOPS",
                            style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                          ),
                        ),
                      )
                  ),
                ), //with button
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  child: FutureBuilder(
                    future: getw(widget.mailid),
                    builder: (context, snapshot) {

                      if (snapshot.hasData) {
                        return Column(
                          children: [
                            SizedBox( height : 200,
                              child: ListView.builder(
                                  itemCount: snapshot.data.length,
                                  itemBuilder: (context, index) {
                                    List list = snapshot.data;
                                    print(list);
                                    /* var array = list[index]['events'];
                                            final split = array.split(',');
                                            final Map<int, String> values = {
                                              for (int i = 0; i < split.length; i++)
                                                i: split[i]
                                            };
                                            print(values);
                                            print(array);*/
                                    return
                                      ListTile(
                                        title: Text(list[index],textAlign: TextAlign.center,),
                                      );
                                  }
                              ),
                            ),
                          ],
                        );
                      } else {
                        return Center(child: CircularProgressIndicator(),);
                      }
                    },
                  ),
                ),



                            ]
                         ),
          ),




        );



     

  }
}
