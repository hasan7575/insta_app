import 'package:flutter/material.dart';

import 'InstaScreens/homeScreen.dart';
import 'InstaScreens/loginScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Instagram UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: new LoginScreen(),
      routes: <String,WidgetBuilder>{
        '/HomeScreen':(BuildContext context){
          return new HomeScreen();
        }
      },
    );
  }
}

