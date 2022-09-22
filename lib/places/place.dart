import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../Customcolor.dart';
import '../convertedapi/ConvertedPlace.dart';

class Place extends StatefulWidget {
  const Place({Key? key}) : super(key: key);

  @override
  State<Place> createState() => _PlaceState();
}

class _PlaceState extends State<Place> {
  bool isLoading = false;
  ConvertedPlace? placeData;
  String access_token =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9hbGNhcHRpbi5jb21cL2FwaVwvcmVnaXN0ZXIiLCJpYXQiOjE2NjM3NjQ0MzMsIm5iZiI6MTY2Mzc2NDQzMywianRpIjoieUwzazB1MjQ4Y2E1R0c1SCIsInN1YiI6ODIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.25ioodzc8EIJp4Yo4qa08JpVcDCrcDImY4VvgqQXbiU";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/Manubutton.png"),
                      Text("Tour",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      )
                    ]),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text(
                  "Popular Destination",
                  style: TextStyle(
                      color: CupertinoColors.systemBlue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text(
                  "10 tour available",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Column(children: [
                SizedBox(
                  height: 140,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset("assets/images/ParisCity.png"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset("assets/images/City.png"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset("assets/images/NewYork.png"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset("assets/images/IndiaCity.png"),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: Stack(
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/Disccount.png",
                          fit: BoxFit.fill,
                        ),
                        margin: EdgeInsets.only(left: 8.0),
                      ),
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 150,
                                  child: Card(
                                    child: Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 180.0, top: 10),
                                        child: Text(
                                          "Holidays",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 8.0, left: 0.8),
                                        child: Text(
                                          "Say yes to iconic snow Catamount,",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, right: 120.0),
                                        child: Text(
                                          "Hillsdale, New York!",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Book your holiday package today",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12),
                                          ),
                                          SizedBox(
                                            width: 25,
                                          ),
                                          CircleAvatar(
                                            backgroundColor:
                                                CustomColor.movblue,
                                            child: Icon(
                                              Icons.arrow_forward_outlined,
                                              size: 25,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      )
                                    ]),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                SizedBox(
                                  height: 150,
                                  child: Card(
                                    child: Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 180.0, top: 10),
                                        child: Text(
                                          "Holidays",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 8.0, left: 0.8),
                                        child: Text(
                                          "Say yes to iconic snow Catamount,",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, right: 120.0),
                                        child: Text(
                                          "Hillsdale, New York!",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Book your holiday package today",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12),
                                          ),
                                          SizedBox(
                                            width: 25,
                                          ),
                                          CircleAvatar(
                                            backgroundColor:
                                                CustomColor.movblue,
                                            child: Icon(
                                              Icons.arrow_forward_outlined,
                                              size: 25,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      )
                                    ]),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                SizedBox(
                                  height: 150,
                                  child: Card(
                                    child: Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 180.0, top: 10),
                                        child: Text(
                                          "Holidays",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 8.0, left: 0.8),
                                        child: Text(
                                          "Say yes to iconic snow Catamount,",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, right: 120.0),
                                        child: Text(
                                          "Hillsdale, New York!",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Book your holiday package today",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12),
                                          ),
                                          SizedBox(
                                            width: 25,
                                          ),
                                          CircleAvatar(
                                            backgroundColor:
                                                CustomColor.movblue,
                                            child: Icon(
                                              Icons.arrow_forward_outlined,
                                              size: 25,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      )
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, right: 120),
                      child: Text(
                        "Discover New Places",
                        style: TextStyle(
                            color: CupertinoColors.systemBlue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                        itemCount: 1,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed("placeinfo");
                                  },
                                  child: Image.asset(
                                      "assets/images/eviltower.png")),
                              Image.asset("assets/images/parrotcay.png"),
                              Image.asset("assets/images/NoterDame.png"),
                            ],
                          );
                        },
                      ),
                    ),
                    /*
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: placeData?.data?.data?.length,
                        itemBuilder: (context, index) {
                          InnerData? item=placeData?.data?.data?[index];
                          return Row(
                            children: [
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Image.network(item!.name??""),
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ),

                     */
                  ],
                )
              ]),
            ]),
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

    dynamic placeJson = jsonDecode(PlaceResponse.body);

    setState(() {
      placeData = ConvertedPlace.fromJson(placeJson);
      if (PlaceResponse.statusCode == 200) {
        ConvertedPlace userData = ConvertedPlace.fromJson(placeJson);
        print(userData.data);
        Navigator.of(context).pushNamed("navigation");
      } else {
        print(placeJson["message"]);
      }
    });

    setState(() {
      isLoading = false;
    });
  }
}
