import 'package:eventassign/screens/paper.dart';
import 'package:eventassign/screens/profilepage.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import '../register.dart';
import 'faq.dart';
import 'nontechnical.dart';
import 'signinpage.dart';
import 'technical.dart';
import 'webinars.dart';
import 'homepage.dart';
import 'eventspage.dart';
import 'workshoppage.dart';
import 'aboutpage.dart';
import 'teamspage.dart';
import 'contactpage.dart';

class DrawerWidget extends StatefulWidget {
  String mail;


  DrawerWidget({Key key, @required this.mail}) : super(key: key);



  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {

  String _chosenValue;

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Hello !'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Looking for events?'),
                SizedBox(
                  height: 20,
                ),
                Text('Please select a category and press go'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _createDrawerHeader(),
            _createDrawerItem(
                icon: Icons.perm_contact_cal_outlined,
                text: 'Profile',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => profile(mailid: widget.mail,)),
                )
            ),
            _createDrawerItem(
                icon: Icons.emoji_events_outlined,
                text: 'Events',
                onTap: () {
                       _showMyDialog();
                }
                ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: DropdownButton<String>(
                    focusColor:Colors.white,
                    value: _chosenValue,
                    //elevation: 5,
                    style: TextStyle(color: Colors.white),
                    iconEnabledColor:Colors.black,
                    items: <String>[
                      'Technical',
                      'Non-Technical',
                      'Flagship'

                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,style:TextStyle(color:Colors.black),),
                      );
                    }).toList(),
                    hint:Text(
                      "Choose event category",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    onChanged: (String value) {
                      setState(() {
                        _chosenValue = value;
                      });
                    },
                  ),
                ),
                TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      overlayColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered))
                            return Colors.blue.withOpacity(0.04);
                          if (states.contains(MaterialState.focused) ||
                              states.contains(MaterialState.pressed))
                            return Colors.blue.withOpacity(0.12);
                          return null; // Defer to the widget's default.
                        },
                      ),
                    ),
                    // Within the `FirstRoute` widget
                    onPressed: () {
                             if(_chosenValue == null){

                             }
                             else if(_chosenValue == 'Technical') {
                               Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context) => tech( mailid: widget.mail,)),
                               );
                             }
                             else if(_chosenValue == 'Non-Technical') {
                          Navigator.push(
                           context,
                                  MaterialPageRoute(builder: (context) => nontech()),
                                  );
                             }
                             else if(_chosenValue == 'Flagship') {
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => webinar()),
                               );
                             }
                    },

                    child: Text('Go')
                )

              ],
            ),
            _createDrawerItem(
                icon: Icons.assistant_photo_rounded,
                text: 'Workshops',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => workshops(mailid: widget.mail,)),
                )),
            _createDrawerItem(
                icon: Icons.post_add_rounded,
                text: 'Paper Presentation',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pap()),
                )),
            _createDrawerItem(
                icon: Icons.assignment_ind_rounded,
                text: 'About Us',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => about()),
                )),
            _createDrawerItem(
                icon: Icons.people_sharp,
                text: 'Teams',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => teams()),
                )),
            _createDrawerItem(
                icon: Icons.contact_phone_rounded,
                text: 'Contact / FAQ',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => contact()),
                )),

            _createDrawerItem(
                icon: Icons.logout,
                text: 'LOGOUT',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyHomePage()),
                )),
          ],
        ),
      ),
    );
  }
}

Widget _createDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Stack(children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Image.asset(
              'assets/PSG icon.png',
              width: 80,
              height: 80,
            ),
          ),
        ),
        Positioned(

            bottom: 12.0,
           left: 85,
            child: Text("Welcome To Our App",   textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF545454),
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500))),
      ]));
}

Widget _createDrawerItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(
          icon,
          color: Color(0xFF808080),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            text,
            style: TextStyle(color: Color(0xFF484848)),
          ),
        )
      ],
    ),
    onTap: onTap,
  );
}
