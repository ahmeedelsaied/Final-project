import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../Customcolor.dart';
import '../convertedapi/LoginConverted.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final forfieldmkey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                CustomColor.movblue,
                CustomColor.buttons,
                CustomColor.lightmov,
              ],
            ),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 70,
                ),
                Image.asset("assets/images/splashscreen.png"),
                SizedBox(
                  height: 50,
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 25, right: 20),
                      child: Image.asset("assets/images/BG.png"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 45, right: 45),
                      child: Form(
                        key: forfieldmkey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Center(
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(hintText: "Email"),
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    !value.contains("@")) {
                                  return "Enter Valid Email";
                                }
                                return null;
                              },
                              onSaved: (value) {
                                setState(() {
                                  email = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(hintText: "Password"),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter Valid Password";
                                }
                                return null;
                              },
                              onSaved: (value) {
                                setState(() {
                                  password = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Forget Pasword ? ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: CustomColor.buttons),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Stack(
                              children: [
                                Container(
                                    width: 300,
                                    height: 50,
                                    child: isLoading
                                        ? const Center(
                                            child: CircularProgressIndicator(),
                                          )
                                        : MaterialButton(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            color: CustomColor.movblue,
                                            onPressed: () {
                                              if (forfieldmkey.currentState!
                                                  .validate()) {
                                                forfieldmkey.currentState!.save();
                                                login();
                                              }
                                            },
                                            child: Text("Sign in",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold)),
                                          )),
                                Positioned(
                                    right: 0,
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: CustomColor.movblue,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: Icon(
                                        Icons.arrow_forward_outlined,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/Socialicons.png"),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have an account? ",
                          style: TextStyle(color: Colors.white),
                        ),
                        GestureDetector(
                          child: Text(
                            "Sign Up ",
                            style: TextStyle(color: Colors.white),
                          ),
                          onTap: () {
                            Navigator.of(context).pushNamed("signup");
                          },
                        ),
                        SizedBox(height: 72,)
                      ],
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }

  Future login() async {
    setState(() {
      isLoading = true;
    });

    Response loginRespone = await post(
      Uri.parse("http://alcaptin.com/api/login"),
      body: {"email": email, "password": password},
    );
    dynamic convertedJson = jsonDecode(loginRespone.body);
    print(loginRespone.body);

    if (loginRespone.statusCode == 200) {
      LoginConverted userData = LoginConverted.fromJson(convertedJson);
      print(userData.data);
      Navigator.of(context).pushNamed("navigation");
    } else {
      print(convertedJson["message"]);
    }


    setState(() {
      isLoading = false;
    });
  }
}
