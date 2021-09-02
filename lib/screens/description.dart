import 'package:flutter/material.dart';
import 'technical.dart';


class desc extends StatefulWidget {
  @override
  _descState createState() => _descState();
}

class _descState extends State<desc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 80,),
              Container(
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(16.0),
               color: Colors.yellow,
                ),
                padding: EdgeInsets.all(50),
                child: Column(

                  children: [

                         Row(
                           children: [
                             /*Container(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: GestureDetector(
                                    child: Icon(Icons.close),
                                    onTap : () {
                                   Navigator.push(
                                  context,
                                MaterialPageRoute(builder: (context) => tech()),
                                  );
                                 },
                                ),
                              ),
                        ),*/
                             Center(child: Text('                    Description')),

                           ],
                         ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Kaun Banega Codepathi is a quiz-based game show where the contestants are asked multiple choice questions and must select the correct answer from four possible choices, and are provided with lifelines that may be used if they are uncertain. Contestants are provided with the chance to answer a series of questions more related to computer science stream in order to win a cash prize.',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
