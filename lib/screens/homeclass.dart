import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:learningapp/screens/bookclass.dart';
import 'package:learningapp/screens/provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeClass extends StatefulWidget {
  HomeClass({super.key});

  @override
  State<HomeClass> createState() => _HomeClassState();
}

class _HomeClassState extends State<HomeClass> {

   String? _username;
   late SharedPreferences data;

@override
  void initState() {
    super.initState();
    retrieveData();  
   
  }
  // Function to retrieve data from SharedPreferences
  Future<String?> retrieveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? username = prefs.getString('Username'); // Get the saved username
  // Ensures widget is still in the tree before updating the state

      setState(() {
        _username = username;
      });
    
    
  }

  

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    
    return Scaffold(
      body:
      
      
       SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Welcome back  $_username",
                  style: TextStyle(
                    color: Color.fromARGB(255, 92, 42, 179),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Text(
                   //context.watch<UserProvider>().userName,
                //   '$_username',
                //   style: TextStyle(
                //     color: Color.fromARGB(255, 92, 42, 179),
                //     fontSize: 25,
                //     fontWeight: FontWeight.bold,
                //   ),
                // )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Color.fromARGB(255, 92, 42, 179)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Bookclass(),
                          ));
                    },
                    child: Text(
                      "Book Class",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Color.fromARGB(255, 92, 42, 179)),
                    onPressed: () {},
                    child: Text(
                      "My Courses",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Last Classes",
                style: TextStyle(
                  color: Color.fromARGB(255, 92, 42, 179),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Carousel slider
            CarouselSlider(
              items: [
                Material(
                  elevation: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 7.0,
                        )
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/WhatsApp Image 2025-02-19 at 4.38.21 PM.jpeg"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(alignment: Alignment.topLeft),
                                Text(
                                  "Hardware Engineering",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 92, 42, 179),
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  "HARDWARE AND OS",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 92, 42, 179),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "1h 00 min",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 92, 42, 179),
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Material(
                  elevation: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 7.0,
                        )
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/Law image.jpeg"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(alignment: Alignment.topLeft),
                                Text(
                                  "Humanities",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 92, 42, 179),
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  "LAW AND CONSTITUTION",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 92, 42, 179),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "2h 25 min",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 92, 42, 179),
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Material(
                  elevation: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 7.0,
                        )
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/booksn.jpeg"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(alignment: Alignment.topLeft),
                                Text(
                                  "English & Malayalam Literatures",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 92, 42, 179),
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  "LITERATURES",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 92, 42, 179),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "3h 50 min",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 92, 42, 179),
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),



                
                Material(
                  elevation: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 7.0,
                        )
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/network.jpeg"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(alignment: Alignment.topLeft),
                                Text(
                                  "Network Administrations",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 92, 42, 179),
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  "NETWORKING",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 92, 42, 179),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "1h 50 min",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 92, 42, 179),
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Add other items similarly
              ],
              options: CarouselOptions(
                height: height / 3.5,
                autoPlay: true,
                aspectRatio: 5 / 10,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: false,
                autoPlayAnimationDuration: Duration(milliseconds: 80),
                viewportFraction: 0.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
