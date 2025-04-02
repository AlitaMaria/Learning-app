
import 'package:flutter/material.dart';
import 'package:learningapp/screens/Profile.dart';
import 'package:learningapp/screens/class.dart';
import 'package:learningapp/screens/course.dart';
import 'package:learningapp/screens/homeclass.dart';

class Homrscreen extends StatefulWidget {
  const Homrscreen({super.key});

  @override
  State<Homrscreen> createState() => _ClassesState();
}

class _ClassesState extends State<Homrscreen> {
  var size, height, width;
  int _currentIndex = 0;
  String appbarstr="Homeclass";
  List namestr=["HomeClass","My Classes","Account"];

  // List of screens for BottomNavigationBar
  final List<Widget> _screens = [
    HomeClass(),
    MyClasses(),   // Navigate to Class screen when Home is selected
    Profile(), // Navigate to Profile screen
    // Do not add Homrscreen() here to avoid redundancy
  ];



  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Course(),));
            },
            icon: Icon(Icons.arrow_back_ios, color: Color.fromARGB(255, 92, 42, 179))),
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Text(
            namestr[_currentIndex],
            style: TextStyle(
              color: Color.fromARGB(255, 92, 42, 179),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:      _screens[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Color.fromARGB(255, 92, 42, 179),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.class_),
            label: 'My Classes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
