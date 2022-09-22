import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../Customcolor.dart';
import '../convertedapi/ConvertedRegister.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formkey = GlobalKey<FormState>();
  dynamic email = "";
  dynamic password = "";
  String Name="";
  int? PhoneNumber;
  bool checked = false;
  bool loading=false;

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
                height: 50,
              ),
              Image.asset("assets/images/splashscreen.png"),
              SizedBox(
                height: 20,
              ),
              Stack(children: [
                Container(
                  margin: EdgeInsets.only(left: 25, right: 20),
                  child: Image.asset("assets/images/form.png"),
                ),
                Container(
                    margin: EdgeInsets.only(left: 45, right: 45),
                    child: Form(
                      key: formkey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Center(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Name"),
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty
                                    ) {
                                  return "Enter Valid Name";
                                }
                                return null;
                              },
                              onSaved: (value) {
                                setState(() {
                                  Name = value!;
                                });
                              }
                          ),
                          SizedBox(
                            height: 10,
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
                            height: 10,
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
                          SizedBox(height: 10,),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(hintText: "Phone Number"),
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty
                                ) {
                                  return "Enter Valid Number";
                                }
                                return null;
                              },

                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: checked,
                                onChanged: (value) {
                                  setState(() {
                                    checked = value!;
                                  });
                                },
                              ),
                              RichText(
                                  textAlign: TextAlign.start,
                                  text: const TextSpan(
                                      text: "I agree the ",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                      children: [
                                        TextSpan(
                                            text: " Trems & Conditions",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.blue,
                                            )),
                                      ])),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Stack(
                            children: [
                              Container(
                                  width: 300,
                                  height: 50,
                                  child:  loading?
                                      const Center(child:  CircularProgressIndicator(),)
                                 : MaterialButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    color: CustomColor.movblue,

                                    onPressed: () {
                                      if (formkey.currentState!
                                          .validate()) {
                                        formkey.currentState!.save();
                                        Register();
                                      }
                                    },
                                    child: Text("Sign Up",
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
                                        borderRadius: BorderRadius.circular(100)
                                    ),
                                    child: Icon(Icons.arrow_forward_outlined,size: 25,color: Colors.white,),

                                  )) ],
                          ),
                        ],
                      ),
                    )),
              ]),
              SizedBox(height: 20,),
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
                        "Do you have an account? ",
                        style: TextStyle(color: Colors.white),
                      ),
                      GestureDetector(child:
                      Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                        onTap: () {
                          Navigator.of(context).pushNamed("login");
                        },),
                      SizedBox(height: 72,)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  Future Register() async {
    setState(() {
      loading = true;
    });

    Response registerRespone = await post(
      Uri.parse("http://alcaptin.com/api/register"),
      body: {"first_name":"ahmed",
    "last_name":"elshora",
    "email":email,
    "password":password,
    "age":"28",
    "gender":"male"},
    );
    dynamic convertedregister = jsonDecode(registerRespone.body);
    print(registerRespone.body);

    if (registerRespone.statusCode == 200) {
      ConvertedRegister userData = ConvertedRegister.fromJson(convertedregister);
      print(userData.data);
      Navigator.of(context).pushNamed("navigation");
    } else {
      print(convertedregister["message"]);
    }


    setState(() {
      loading = false;
    });
  }

}
