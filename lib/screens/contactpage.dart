import 'package:faq/faq.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:contactus/contactus.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'DrawerWidget.dart';

class contact extends StatefulWidget {
  @override
  _contactState createState() => _contactState();
}

class _contactState extends State<contact> {
  int _counter = 0;
  List<List<String>> _generateData() {
    int numberOfGroups = 5;
    List<List<String>> results = List<List<String>>();
    for (int i = 0; i < numberOfGroups; i++) {
      List<String> items = List<String>();
      for (int j = 0; j < 1; j++) {
        items.add("Item $j in group $i");
      }
      results.add([
        "There are several methods to create custom widgets, but the most basic is to combine simple existing widgets into the more complex widget that you want. This is called composition."
      ]);
    }
    return results;
  }
  List<String> attachments = [];
  bool isHTML = false;

  final _recipientController = TextEditingController(
    text: 'example@example.com',
  );

  final _subjectController = TextEditingController(text: 'The subject');

  final _bodyController = TextEditingController(
    text: 'Mail body.',
  );

  Future<void> send() async {
    final Email email = Email(
      body: _bodyController.text,
      subject: _subjectController.text,
      recipients: [_recipientController.text],
      isHTML: isHTML,

    );

    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'success';
    } catch (error) {
      platformResponse = error.toString();
    }

    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Thanks for your valuable feedback"),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
        appBar: AppBar(title: Text('Contact Us'),automaticallyImplyLeading: false,),

        body: SingleChildScrollView(
          child: Column(
            children: [
              ContactUs(
              cardColor: Colors.blueGrey,
              textColor: Colors.white,

              email: 'teamshristi2k21@gmail.com',
              companyName: 'SHRISTI 2k21',
              companyColor: Colors.teal.shade100,
              phoneNumber: '+919487340008',
              website: 'https://www.psgtech.edu/',
              tagLine: 'IEEE Students Chapter 12951',
              taglineColor: Colors.teal.shade100,
              instagram: 'ieee_sc_12951',

          ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0,bottom: 20),
                child: Text(
                  "Please provide your feedback below",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.8),
                      fontSize: 18.0,
                      height: 0.4,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
            padding: EdgeInsets.all(8.0),
            child:
         TextField(
                      controller: _recipientController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Recipient',
                      ),
                    ),
          ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child:
                TextField(
                  controller: _subjectController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Recipient',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child:
                TextField(
                  controller: _bodyController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Recipient',
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                width: 300.00,
                child: RaisedButton(onPressed: (){
                  send();
                },
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
                        child: Text("Send",
                          style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                        ),
                      ),
                    )
                ),
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.only(top: 50.0,bottom: 20),
                child: Text(
                  "Frequently Asked Questions",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.8),
                      fontSize: 18.0,
                      height: 0.4,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 400,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      faqList(
                        title: 'Expandable List demo',
                        data: _generateData(),
                      )
                    ],
                  ),
                ),
              ),

            /*  CheckboxListTile(
                contentPadding:
                EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
                title: Text('HTML'),
                onChanged: (value) async {
                  if (value != null) {
                    setState(() {
                      isHTML = value;
                    });
                  }
                },
                value: isHTML,
              ),*/

                ],
              ),
            ),
          );




  }
}
