
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../convertedapi/ConvertedPlaceInfo.dart';

class PlaceInfo extends StatefulWidget {
  const PlaceInfo({Key? key}) : super(key: key);

  @override
  State<PlaceInfo> createState() => _PlaceInfoState();
}

class _PlaceInfoState extends State<PlaceInfo> {
  bool isLoading = false;
  ConvertedPlaceInfo? placeinfoData;
  String access_token =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9hbGNhcHRpbi5jb21cL2FwaVwvcmVnaXN0ZXIiLCJpYXQiOjE2NjM3NjQ0MzMsIm5iZiI6MTY2Mzc2NDQzMywianRpIjoieUwzazB1MjQ4Y2E1R0c1SCIsInN1YiI6ODIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.25ioodzc8EIJp4Yo4qa08JpVcDCrcDImY4VvgqQXbiU";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Text("Paris",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25)),
        leading: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("place");
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: 1,
            ),
            Text(
              "Back",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.grey,
          )
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 270,
              width: double.infinity,
              child: Image.asset(
                "assets/images/Info.jpg",
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Disneyland Paris",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250.0),
              child: Text(
                "Departure",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 240.0),
              child: Text(
                "23rd Oct 2017",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250.0),
              child: Text(
                "Duration",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220.0),
              child: Text(
                "5 Days / 4  Nights",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Discover 7 World Heritage Sites in this tour",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Fans of Mickey can visit Disneyland Paris which is ",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "located 32 km from central Paris, with connection ",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(right: 155),
              child: Text(
                "to the suburban RER A. ",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text(
              "Disneyland Paris has two theme parks: Disneyland",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 5,),
            Text(
              "(with Sleeping Beauty's castle) and Walt Disney",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 5,),
            Text(
              "Studios. Top attractions are Space Mountain, It's a",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 5,),
            Text(
              "Small World and Big Thunder Mountain.",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 5,),

          ],
        ),
      ),
    );
  }
  Future getplaces() async {
    setState(() {
      isLoading = true;
    });

    Response PlaceResponse =
    await get(Uri.parse("http://alcaptin.com/api/places"), headers: {
      "Authorization": "Bearer $access_token",
    });

    dynamic placeinfoJson = jsonDecode(PlaceResponse.body);

    setState(() {
      placeinfoData = ConvertedPlaceInfo.fromJson(placeinfoJson);
      if (PlaceResponse.statusCode == 200) {
        ConvertedPlaceInfo userData = ConvertedPlaceInfo.fromJson(placeinfoJson);
        print(userData.data);
        Navigator.of(context).pushNamed("navigation");
      } else {
        print(placeinfoJson["message"]);
      }
    });

    setState(() {
      isLoading = false;
    });
  }
}

