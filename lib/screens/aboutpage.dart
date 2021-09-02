import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'DrawerWidget.dart';

class about extends StatefulWidget {
  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
      backgroundColor: Colors.limeAccent,
      appBar: AppBar(title: Text('About Us'),automaticallyImplyLeading: false,),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
              height: 300.0,
              color: Colors.transparent,
              child: new Container(
                  decoration: new BoxDecoration(
                      color: Colors.black,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                        bottomRight: const Radius.circular(40.0),
                        bottomLeft: const Radius.circular(40.0),
                      )
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('SHRISTI 2K21',
                          style: GoogleFonts.lobster(fontSize: 50,color: Colors.amberAccent),

                        ),

                         SizedBox(height: 20,),

                         Padding(
                           padding: const EdgeInsets.all(5.0),
                           child: Center(
                             child: Text("SRISHTI is an annual technical symposium organised by IEEE Students' Chapter 12951 of PSG College of Technology. Going by the phrase, 'unleash the talent within' , Srishti brings out the creme de la creme of the student's community through an diverse array of events. The Symposium is home to multiple technical and non technical events, workshops project and paper presentations. Explore your interests and elevate your skills.",
                                style: GoogleFonts.indieFlower(fontSize: 15,color: Colors.white),
                             ),
                           ),
                         ),
                        SizedBox(height: 50,),
                      ],
                    ),
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(

                width: 180,
                height: 220,
                alignment: Alignment.center,
                child: Image.asset('assets/PSG icon.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 250.0,
                color: Colors.transparent,
                child: new Container(
                    decoration: new BoxDecoration(
                        color: Colors.black,
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(40.0),
                          topRight: const Radius.circular(40.0),
                          bottomRight: const Radius.circular(40.0),
                          bottomLeft: const Radius.circular(40.0),
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('IEEE',
                              style: GoogleFonts.lobster(fontSize: 50,color: Colors.amberAccent),

                            ),

                            SizedBox(height: 20,),

                            Center(
                              child: Text("The Institute of Electrical and Electronics Engineers is a professional association for electronic engineering and electrical engineering with its corporate office in New York City and its operations center in Piscataway, New Jersey. ",
                                style: GoogleFonts.indieFlower(fontSize: 15,color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 50,),
                            /* Container(
                              /*width: 130,
                              height: 130,*/
                              alignment: Alignment.center,
                              child: Image.asset('assets/psgcollege.jpg'),
                            ),*/



                          ],
                        ),
                      ),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(

                width: 180,
                height: 220,
                alignment: Alignment.center,
                child: Image.asset('assets/ieee mb blue.png'),
              ),
            ),

            Stack(
              children: [
                Container(
                  width: 420.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.purple, Colors.blue]
                      ),

                    shape: BoxShape.circle,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(100.0),
                        child: Text('Technical Events',
                          style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text('20',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 370.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),

                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 380.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),

                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 390.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),

                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 400.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),

                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),
            Stack(
              children: [
                Container(
                  width: 420.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.green, Colors.blue]
                    ),

                    shape: BoxShape.circle,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(80.0),
                        child: Text('Non-Technical Events',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text('25',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 370.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),

                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 380.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),

                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 390.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),

                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 400.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),

                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),
            Stack(
              children: [
                Container(
                  width: 420.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.redAccent, Colors.blue]
                    ),

                    shape: BoxShape.circle,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(80.0),
                        child: Text('Webinars',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text('25',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 370.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),

                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 380.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),

                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 390.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),

                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 400.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),

                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),
            Stack(
              children: [
                Container(
                  width: 420.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.yellowAccent, Colors.blue]
                    ),

                    shape: BoxShape.circle,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(80.0),
                        child: Text('Workshops',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text('25',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 370.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),

                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 380.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),

                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 390.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),

                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 400.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),

                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),
            Stack(
              children: [
                Container(
                  width: 420.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.brown, Colors.blue]
                    ),

                    shape: BoxShape.circle,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(80.0),
                        child: Text('Paper Presentation',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text('25',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 370.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),

                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 380.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),

                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 390.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),

                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 400.0,
                  height: 300.0,
                  decoration: new BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),

                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),


          ],
        ),
      ),

    );
  }
}
