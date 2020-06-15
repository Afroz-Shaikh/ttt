import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ttt/Screens/Home.dart';
import 'package:ttt/Screens/Botgame.dart';
import 'package:ttt/Screens/FriendGame.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.black, statusBarColor: Colors.black));
    return MaterialApp(
      debugShowCheckedModeBanner: false,

//      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        'bot':(context) => BotGame(),
        'friend':(context) => FriendGame(),
      },
    );
  }
}
