import 'package:final_project/Customcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, actions: [
        IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed("navigator");
            },
            icon: Icon(
              Icons.cancel_outlined,
              color: Colors.black,
            )),
      ]),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: Colors.white60,
            height: 180,
            width: double.infinity,
            child: UserAccountsDrawerHeader(
                margin: EdgeInsets.only(left: 130, top: 20, bottom: 10),
                decoration: BoxDecoration(color: Colors.white60),
                accountName: Text(
                  "Ahmed elsaied",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "ahelsaied@gmail.com",
                  style: TextStyle(color: Colors.grey),
                ),
                currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/IMG.png"))),
          ),
          ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Notifications"),
                  Icon(Icons.arrow_forward_ios_outlined)
                ],
              )),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed("tour");
            },
            child: ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.airplanemode_active,
                      color: Colors.white,
                    )),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Tour"),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                )),
          ),
          ListTile(
              leading: CircleAvatar(
                  backgroundColor: CustomColor.lightmov,
                  child: Icon(
                    Icons.location_on_sharp,
                    color: Colors.white,
                  )),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Location"),
                  Icon(Icons.arrow_forward_ios_outlined)
                ],
              )),
          ListTile(
              leading: CircleAvatar(
                  backgroundColor: CustomColor.movblue,
                  child: Icon(
                    Icons.language,
                    color: Colors.white,
                  )),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Language"),
                  Icon(Icons.arrow_forward_ios_outlined)
                ],
              )),
          ListTile(
              leading: CircleAvatar(
                  backgroundColor: CupertinoColors.activeBlue,
                  child: Icon(
                    Icons.person_add_alt_1_sharp,
                    color: Colors.white,
                  )),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Invite friends"),
                  Icon(Icons.arrow_forward_ios_outlined)
                ],
              )),
          ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.yellowAccent,
                  child: Icon(
                    Icons.help_center,
                    color: Colors.white,
                  )),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Help Center"),
                  Icon(Icons.arrow_forward_ios_outlined)
                ],
              )),
          ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                  )),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Setting"),
                  Icon(Icons.arrow_forward_ios_outlined)
                ],
              )),
          ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.logout,
                    color: Colors.white,
                  )),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Log Out"),
                  Icon(Icons.arrow_forward_ios_outlined)
                ],
              )),
        ]),
      ),
    );
  }
}
