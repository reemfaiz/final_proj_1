// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcom extends StatelessWidget {
  const Welcom({super.key});

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
                          "Welcom To EDU",
                          style: TextStyle( fontFamily: "Schyler" ,fontSize: 20 ,fontWeight: FontWeight.w900),
                        ),
                        SizedBox(height: 100,),
                        SvgPicture.asset("assets/icons/chat.svg",width: 300,),
                    SizedBox(height: 60,),
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
                                        horizontal: 77, vertical: 17)))),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/signup');
                            },
                            child: Text(
                              "sign up",
                              style: TextStyle(color: Color.fromARGB(246, 0, 0, 0)),
                            ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 220, 182, 227)),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                        horizontal: 77, vertical: 17)))),
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
                  child: Image.asset(
                    "assets/images/main_bottom.png",
                    width: 110,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
