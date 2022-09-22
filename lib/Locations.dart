import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(


      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Image.asset("assets/images/Manubutton.png"),
        ),
        backgroundColor: Colors.white,
        title:
            Text("LOCATION",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
      ),
      
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Image.asset("assets/images/usa.jpg", fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child:
                      Image.asset("assets/images/london.png",width: double.infinity, fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child:
                      Image.asset("assets/images/paris.jpg", fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child:
                      Image.asset("assets/images/india.png", width: double.infinity,fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Image.asset("assets/images/australia.png",width: double.infinity,
                      fit: BoxFit.fill),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
