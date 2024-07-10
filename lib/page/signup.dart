// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class signup extends StatelessWidget {
  const signup({super.key});

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
                          "SIGN UP",
                          style: TextStyle(fontFamily: "Schyler", fontSize: 20 ,fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SvgPicture.asset(
                          "assets/icons/signup.svg",
                          width: 200,
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
                              "SIGN UP",
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
                            Text(" Already have an Account?"),
                            SizedBox(
                              width: 10,
                            ),
                          GestureDetector ( onTap: (){  Navigator.pushNamed(context, '/Login');},
                              child: Text(
                                "LOGIN",
                                style: TextStyle(fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 86, 21, 97)),
                              ),
                            )
                          ],
                        ),
                        Container(padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                          child: Row(
                            children: [
                              Expanded(child: Divider(thickness: 1,color: Colors.purple[900],)),
                              Text("OR"),
                                  Expanded(child: Divider(thickness: 1,color: Colors.purple[900],)),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [ 
                            GestureDetector( onTap: (){},
                              child: Container( padding: EdgeInsets.all(13), decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.purple)),
                                child: SvgPicture.asset("assets/icons/facebook.svg",height: 20,color: Colors.purple,)),
                            ),SizedBox(height: 10,width: 10,),
                            GestureDetector( onTap: (){}, child: Container(padding: EdgeInsets.all(13), decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.purple)),   child: SvgPicture.asset("assets/icons/twitter.svg",width: 20,color: Colors.purple))),SizedBox(width: 10,),
                            GestureDetector( onTap: (){},   child: Container(padding: EdgeInsets.all(13), decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.purple)),   child: SvgPicture.asset("assets/icons/google-plus.svg",width: 20,color: Colors.purple)))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    child: Image.asset(
                  "assets/images/signup_top.png",
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
