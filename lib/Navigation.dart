
import 'package:final_project/places/PlaceInfo.dart';
import 'package:final_project/places/place.dart';

import 'Locations.dart';
import 'package:final_project/profile.dart';
import 'package:flutter/material.dart';

import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation>  with SingleTickerProviderStateMixin {


    late TabController Mycontroller;
    @override
    void initState() {
      super.initState();
      Mycontroller = TabController(
        initialIndex: 1,
        length: 5,
        vsync: this,
      );
    }

    @override
    void dispose() {
      super.dispose();
      Mycontroller.dispose();
    }
    Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MotionTabBar(
        initialSelectedTab: "Locations",
        labels: const ["MY Home", "Fav", "Locations", "owne", "MYprofile"],
        icons: const [
          Icons.home,
          Icons.favorite_border_outlined,
          Icons.card_giftcard,
          Icons.gif_box,
          Icons.person_outlined
        ],
        tabSize: 60,
        tabBarHeight: 50,
        textStyle: const TextStyle(
          fontSize: 12,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: Colors.black54,
        tabIconSize: 30.0,
        tabIconSelectedSize: 30.0,
        tabSelectedColor: Colors.blue,
        tabIconSelectedColor: Colors.white,
          tabBarColor:Colors.white,
        onTabItemSelected: (int value) {
          setState(() {
            Mycontroller.index = value;
          });
        },
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),

        controller: Mycontroller,
        children: [
          Location(),
          PlaceInfo(),
          Place(),

          Icon(Icons.gif_box,color: Colors.blue,),

          Profile(),
        ],
      ),
    );
  }
}

