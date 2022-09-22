import 'dart:async';

import 'package:flutter/material.dart';

import 'Customcolor.dart';
import 'homePage.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    super.initState();
    StartTimer();
  }

  StartTimer() async {
    var duaration = Duration(seconds: 3);
    return Timer(duaration, route);
  }

  route() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MyHomePage()),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              CustomColor.movblue,
              CustomColor.lightmov,
              CustomColor.lightmov,
            ],
          ),
        ),
        child: Center(child: Image.asset("assets/images/Logoscreen.png")),
      ),
    );
  }
}
