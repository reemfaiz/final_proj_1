// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: [
                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        Text(
                          "login",
                          style: TextStyle(
                            fontFamily: "Schyler",
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        SvgPicture.asset(
                          "assets/icons/login.svg",
                          width: 300,
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          width: 300,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 239, 216, 243),
                              borderRadius: BorderRadius.circular(18)),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "peeely@mail.com",
                                icon: Icon(
                                  Icons.person,
                                  color: Color.fromARGB(255, 95, 10, 110),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          width: 300,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 239, 216, 243),
                              borderRadius: BorderRadius.circular(18)),
                          child: TextField(
                            obscureText: true,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "password",
                              icon: Icon(
                                Icons.lock,
                                color: Color.fromARGB(255, 95, 10, 110),
                              ),
                              suffixIcon: Icon(
                                Icons.visibility,
                                size: 15,
                                color: Color.fromARGB(255, 95, 10, 110),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/Login');
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.purple),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                        horizontal: 120, vertical: 17)))),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Don't have an Account?"),
                            SizedBox(
                              width: 10,
                            ),
                          GestureDetector ( onTap: (){  Navigator.pushNamed(context, '/signup');},
                              child: Text(
                              "  signup",
                                style: TextStyle(fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 86, 21, 97)),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    child: Image.asset(
                  "assets/images/main_top.png",
                  width: 150,
                )),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/images/login_bottom.png",
                    width: 110,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
