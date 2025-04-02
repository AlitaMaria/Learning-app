
import 'package:flutter/material.dart';
import 'package:learningapp/screens/home.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    Future.delayed(
        Duration(seconds: 3),
        () => Navigator.push(
            (context),
            MaterialPageRoute(
              builder: (context) => Home(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              const Color.fromARGB(255, 131, 2, 244),
              const Color.fromARGB(255, 223, 27, 253),
              //   const Color.fromARGB(248, 62, 44, 201),
            ]
            )
            ),
          ),
          Center(
            child: Positioned(
                child: Text("LEARNING APP ",style: 
                  TextStyle(
                      shadows: [
                        Shadow(
                            blurRadius: 6.0,
                            offset: Offset(5, 5),
                            color: Color.fromARGB(255, 7, 7, 7))
                      ],
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
            )
            )
            ),
            ]
            )
            ),
          
        );
      
    
  }
}