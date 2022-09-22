import 'package:final_project/places/PlaceInfo.dart';
import 'package:final_project/places/place.dart';
import 'package:final_project/profile.dart';
import 'package:final_project/splach%20_screen.dart';
import 'package:flutter/material.dart';
import 'Locations.dart';

import 'Navigation.dart';
import 'homePage.dart';
import 'loginScreens/SignUp.dart';
import 'loginScreens/login.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Place(),
      debugShowCheckedModeBanner: false,
      routes: {
        "login":(context) => Login(),
        "signup":(context) => SignUp(),
        "location":(context) => Location(),
        "profile":(context) => Profile(),
        "navigation":(context) => Navigation(),
        "tour":(context) => Place(),
        "placeinfo":(context) => PlaceInfo()

      },
    );
  }
}


