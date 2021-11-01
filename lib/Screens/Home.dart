import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ttt/Screens/dialog.dart';
import 'package:flutter/services.dart';
import 'package:ttt/Screens/settings.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff262626),
      body: SafeArea(
        child: Container(
          color: Color(0xff262626),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width,
//                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.menu,
//                        size: 50,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.settings,
//                          size: 50,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Setting()),
                            );
                          }),
//                  IconButton(icon: FaIcon(FontAwesomeIcons.app), onPressed: (){})
                    ],
                  ),
                ),
              ),
              Container(
//                color: Colors.white,
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, top: 140),
//                    padding: const EdgeInsets.fromLTRB(30, 140, 180, 80),
                    child: Text(
                      'Start',
                      textScaleFactor: 1.0,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 70,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
//                color: Colors.greenAccent,
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: RaisedButton(
//                          disabledColor: Colors.grey,

                          splashColor: Colors.blue,
                          textColor: Colors.white,
                          color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Play with bot',
                                  textScaleFactor: 1.0,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                FaIcon(FontAwesomeIcons.robot)
                              ],
                            ),
                          ),
                          onPressed: () => _popupDialog(context),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: RaisedButton(
                          splashColor: Colors.red,
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Play with Friend',
                                  textScaleFactor: 1.0,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                FaIcon(FontAwesomeIcons.peopleArrows)
                              ],
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, 'friend');
                          },
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

_popupDialog(BuildContext context) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          title: Text(
            '⛔Warning',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          content: Text(
            'Not Yet developed',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            MaterialButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Center(
                  child: Text(
                'Alright then!',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              )),
            ),
          ],
        );
      });
}
