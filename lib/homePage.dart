import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Customcolor.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController MyController = PageController();
  bool Islastpage=false;
  @override
  void dispose() {
    MyController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 60),
        child: PageView(
          controller: MyController,
          onPageChanged: (index) {
            setState(() {
              Islastpage = index == 2;
            });
          },
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset("assets/images/Logo.png"),
                  SizedBox(
                    height: 35,
                  ),
                  Image.asset("assets/images/imagepage1.png",width: double.infinity,fit: BoxFit.fill,),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Plan Your Trip",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "plan your trip,choose your destination.",
                    style: TextStyle(

                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "pick the best place for your holiday.",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset("assets/images/Logo.png"),
                  SizedBox(
                    height: 35,
                  ),
                  Image.asset("assets/images/Image-1.png",width: double.infinity,fit: BoxFit.fill,),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Select The Date",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Select the date,book your ticket,we give",
                    style: TextStyle(

                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "you the best price We guarantied!.",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset("assets/images/Logo.png"),
                  SizedBox(
                    height: 35,
                  ),
                  Image.asset("assets/images/Image-2.png",width: double.infinity,fit: BoxFit.fill,),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Enjoy Your Trip",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Enjoy your hoilday! don't forget to take",
                    style: TextStyle(

                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "a photo and share to the world.",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Islastpage
          ? TextButton(
        onPressed: () async {
          Navigator.of(context).pushNamed("login");
        },
        child: Container(
          margin: EdgeInsets.only(left: 150,bottom: 20,),
          child: Text(

            "LET'S GO!",style: TextStyle(fontWeight: FontWeight.bold)

            ,
          ),
        ),
      )
          : Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () => {
                MyController.jumpToPage(2),
              },
              child: Text("Skip",style: TextStyle(color: Colors.grey)),
            ),
            SmoothPageIndicator(
              controller: MyController, // PageController
              count: 3,
              effect: WormEffect(
                spacing: 16,
                dotColor: Colors.black26,
                activeDotColor: CustomColor.movblue,
              ),
              onDotClicked: (index) => MyController.animateToPage(
                index,
                duration: const Duration(
                 milliseconds: 10,
                ),
                curve: Curves.easeInOut,
              ),
            ),
            TextButton(
              onPressed: () => {
                MyController.nextPage(
                  duration: const Duration(microseconds: 10),
                  curve: Curves.easeInOut,
                ),
              },
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
