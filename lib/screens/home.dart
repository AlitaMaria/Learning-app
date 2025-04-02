import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:learningapp/screens/loginpage.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
         leading: IconButton(onPressed: ()=> exit(0)
       , icon: Icon(Icons.arrow_back_ios, color: Color.fromARGB(255, 92, 42, 179),)),
      ),
      
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Stack(children: [
              Column(
                children: [
                 
                  Image.asset(
                      width: 300,
                      height: 300,"assets/image png.png"),
                  Text(
                    "ONLINE LEARNING PLATFORM",
                    style: TextStyle(
                        color: Color.fromARGB(255, 92, 42, 179),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "Education is the most powerful weapon \n which you can use to change the world.",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 92, 42, 179),
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  SizedBox(
                      height: 50,
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              (context),
                              MaterialPageRoute(
                                  builder: (context) => Loginpage()));
                        },
                        child: Text(
                          "Start Learning",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 92, 42, 179),
                        ),
                      ))
                ],
              ),
            ]),
          ))
    ;
  }
}