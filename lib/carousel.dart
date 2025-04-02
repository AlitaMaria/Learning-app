import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:learningapp/screens/provider.dart';
import 'package:provider/provider.dart';

class Carousel1 extends StatelessWidget {
  const Carousel1({super.key});

  @override
  Widget build(BuildContext context) {
     var size, height;
      size = MediaQuery.of(context).size;
    height = size.height;
    return Scaffold(
      body: Container(
            child: CarouselSlider(
              items: [
                InkWell(
                    child: Material(
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
                                        image: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLYBMvjz1doXbGAEOxZ8aBha6BfcARq4KCTg&s"),
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
                                    
                                    Center(
                                      child: Text(
                                        "CHESS",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 92, 42, 179),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Move Crefully: each move counts",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 13,
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
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("DO YOU WANT TO ADD THIS CLASS?",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15)),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        disabledBackgroundColor: Colors.grey,
                                        backgroundColor:
                                            Color.fromARGB(255, 92, 42, 179),
                                      ),
                                      onPressed: () {
                                        //adding provider list then into database
                                         context.read<UserProvider>().addItem("CHESS");
                                         Navigator.pop(context);


                                      },
                                      child: Text("ADD",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)))
                                ],
                              ));
                    }),

                    InkWell(
                    child: Material(
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
                                        image: NetworkImage(
                                            "https://c8.alamy.com/comp/ADMH8B/sudoku-puzzle-close-up-ADMH8B.jpg"),
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
                                    
                                    Center(
                                      child: Text(
                                        "SUDOKU",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 92, 42, 179),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Look closely and wisely",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 13,
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
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("DO YOU WANT TO ADD THIS CLASS?",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15)),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        disabledBackgroundColor: Colors.grey,
                                        backgroundColor:
                                            Color.fromARGB(255, 92, 42, 179),
                                      ),
                                      onPressed: () {
                                         context.read<UserProvider>().addItem("SUDOKKU");
                                         Navigator.pop(context);
                                      },
                                      child: Text("ADD",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)))
                                ],
                              ));
                    }),


                    InkWell(
                    child: Material(
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
                                            "assets/art1image.jpeg"),
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
                                    
                                    Center(
                                      child: Text(
                                        "PAINTING",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 92, 42, 179),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Color defines different emotions",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 13,
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
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("DO YOU WANT TO ADD THIS CLASS?",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15)),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        disabledBackgroundColor: Colors.grey,
                                        backgroundColor:
                                            Color.fromARGB(255, 92, 42, 179),
                                      ),
                                      onPressed: () {
                                         context.read<UserProvider>().addItem("PAINTING");
                                         Navigator.pop(context);
                                      },
                                      child: Text("ADD",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)))
                                ],
                              ));
                    }),


                    InkWell(
                    child: Material(
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
                                        image: NetworkImage(
                                            "https://i.ytimg.com/vi/CJzILQ8_9HM/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBId3m-VzngzbvXUCiLeifQ7QpJmA"),
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
                                    
                                    Center(
                                      child: Text(
                                        "PENCIL SKETCH",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 92, 42, 179),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Each and every line is a creativity",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 13,
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
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("DO YOU WANT TO ADD THIS CLASS?",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15)),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        disabledBackgroundColor: Colors.grey,
                                        backgroundColor:
                                            Color.fromARGB(255, 92, 42, 179),
                                      ),
                                      onPressed: () {
                                         context.read<UserProvider>().addItem("PENCIL SKETCH");
                                         Navigator.pop(context);
                                      },
                                      child: Text("ADD",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)))
                                ],
                              ));
                    }),
                // Add other items similarly
              ],
              options: CarouselOptions(
                height: height / 4,
                autoPlay: true,
                aspectRatio: 1 / 10,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: false,
                autoPlayAnimationDuration: Duration(milliseconds: 80),
                viewportFraction: 0.6,
              ),
            ),
          ),
    );
  }
}






// NEXT CLASS
class Carousel2 extends StatelessWidget {
  const Carousel2({super.key});

  @override
  Widget build(BuildContext context) {
     var size, height;
      size = MediaQuery.of(context).size;
    height = size.height;
    return Scaffold(
      body: Container(
            child: CarouselSlider(
              items: [
                InkWell(
                    child: Material(
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
                                        image: NetworkImage(
                                            "https://blog.udemy.com/wp-content/uploads/2014/06/shutterstock_91234700.jpg"),
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
                                    
                                    Center(
                                      child: Text(
                                        "LAN",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 92, 42, 179),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Local Area Network",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 13,
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
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("DO YOU WANT TO ADD THIS CLASS?",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15)),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        disabledBackgroundColor: Colors.grey,
                                        backgroundColor:
                                            Color.fromARGB(255, 92, 42, 179),
                                      ),
                                      onPressed: () {
                                         context.read<UserProvider>().addItem("LAN");
                                         Navigator.pop(context);
                                      },
                                      child: Text("ADD",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)))
                                ],
                              ));
                    }),
                
                
                InkWell(
                    child: Material(
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
                                        image: NetworkImage(
                                            "https://images.shiksha.com/mediadata/ugcDocuments/images/wordpressImages/2022_07_MicrosoftTeams-image-7-3.jpg"),
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
                                    
                                    Center(
                                      child: Text(
                                        "WAN",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 92, 42, 179),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "wide Area Networks",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 13,
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
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("DO YOU WANT TO ADD THIS CLASS?",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15)),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        disabledBackgroundColor: Colors.grey,
                                        backgroundColor:
                                            Color.fromARGB(255, 92, 42, 179),
                                      ),
                                      onPressed: () {
                                         context.read<UserProvider>().addItem("WAN");
                                         Navigator.pop(context);
                                      },
                                      child: Text("ADD",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)))
                                ],
                              ));
                    }),
                
                InkWell(
                    child: Material(
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
                                        image: NetworkImage(
                                            "https://apposite-tech.com/wp-content/uploads/2017/09/network.png"),
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
                                    
                                    Center(
                                      child: Text(
                                        "MAN",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 92, 42, 179),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "metropolitan Area Networks ",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 13,
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
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("DO YOU WANT TO ADD THIS CLASS?",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15)),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        disabledBackgroundColor: Colors.grey,
                                        backgroundColor:
                                            Color.fromARGB(255, 92, 42, 179),
                                      ),
                                      onPressed: () {
                                         context.read<UserProvider>().addItem("MAN");
                                         Navigator.pop(context);
                                      },
                                      child: Text("ADD",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)))
                                ],
                              ));
                    }),
                
                InkWell(
                    child: Material(
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
                                        image: NetworkImage(
                                            "https://i.pinimg.com/736x/88/96/49/889649941241491479b4ec0508a67964.jpg"),
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
                                    
                                    Center(
                                      child: Text(
                                        "PAN",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 92, 42, 179),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Personal Area Networks ",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 13,
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
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("DO YOU WANT TO ADD THIS CLASS?",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15)),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        disabledBackgroundColor: Colors.grey,
                                        backgroundColor:
                                            Color.fromARGB(255, 92, 42, 179),
                                      ),
                                      onPressed: () {
                                         context.read<UserProvider>().addItem("PAN");
                                         Navigator.pop(context);
                                      },
                                      child: Text("ADD",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)))
                                ],
                              ));
                    }),
                
                // Add other items similarly
              ],
              options: CarouselOptions(
                height: height / 4,
                autoPlay: true,
                aspectRatio: 1 / 10,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: false,
                autoPlayAnimationDuration: Duration(milliseconds: 80),
                viewportFraction: 0.6,
              ),
            ),
          ),
    );
  }
}



// NEXT CLASS

class Carousel3 extends StatelessWidget {
  const Carousel3({super.key});

  @override
  Widget build(BuildContext context) {
     var size, height;
      size = MediaQuery.of(context).size;
    height = size.height;
    return Scaffold(
      body: Container(
            child: CarouselSlider(
              items: [
                InkWell(
                    child: Material(
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
                                        image: NetworkImage(
                                            "https://blog.ipleaders.in/wp-content/uploads/2019/10/criminal-lawyer-jpeg-500x500.jpeg"),
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
                                    
                                    Center(
                                      child: Text(
                                        "CRIMINAL LAW",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 92, 42, 179),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Deals with criminal cases",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 13,
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
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("DO YOU WANT TO ADD THIS CLASS?",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15)),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        disabledBackgroundColor: Colors.grey,
                                        backgroundColor:
                                            Color.fromARGB(255, 92, 42, 179),
                                      ),
                                      onPressed: () {
                                         context.read<UserProvider>().addItem("CRIMINAL LAW");
                                         Navigator.pop(context);
                                      },
                                      child: Text("ADD",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)))
                                ],
                              ));
                    }),
                
                
                InkWell(
                    child: Material(
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
                                        image: NetworkImage(
                                            "https://i0.wp.com/jpassociates.co.in/wp-content/uploads/2024/11/19.png"),
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
                                    
                                    Center(
                                      child: Text(
                                        "ENVIRONTMENTAL LAW",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 92, 42, 179),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Deals with environmental cases",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 13,
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
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("DO YOU WANT TO ADD THIS CLASS?",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15)),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        disabledBackgroundColor: Colors.grey,
                                        backgroundColor:
                                            Color.fromARGB(255, 92, 42, 179),
                                      ),
                                      onPressed: () {
                                         context.read<UserProvider>().addItem("ENVIRONMENTAL LAW");
                                         Navigator.pop(context);
                                      },
                                      child: Text("ADD",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)))
                                ],
                              ));
                    }),
                
               
                
                InkWell(
                    child: Material(
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
                                        image: NetworkImage(
                                            "https://theindianlaw.in/wp-content/uploads/2023/10/CivilLaw.jpg"),
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
                                    
                                    Center(
                                      child: Text(
                                        "CIVIL LAW",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 92, 42, 179),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Law deals with civil cases",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 13,
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
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("DO YOU WANT TO ADD THIS CLASS?",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15)),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        disabledBackgroundColor: Colors.grey,
                                        backgroundColor:
                                            Color.fromARGB(255, 92, 42, 179),
                                      ),
                                      onPressed: () {
                                         context.read<UserProvider>().addItem("CIVIL LAW");
                                         Navigator.pop(context);
                                      },
                                      child: Text("ADD",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)))
                                ],
                              ));
                    }),
                
               
                InkWell(
                    child: Material(
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
                                        image: NetworkImage(
                                            "https://blog.ipleaders.in/wp-content/uploads/2020/09/istockphoto-1159118114-170667a.jpg"),
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
                                    
                                    Center(
                                      child: Text(
                                        "ADMINISTRATIVE LAW",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 92, 42, 179),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Deals with administrative cases",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 13,
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
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("DO YOU WANT TO ADD THIS CLASS?",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15)),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        disabledBackgroundColor: Colors.grey,
                                        backgroundColor:
                                            Color.fromARGB(255, 92, 42, 179),
                                      ),
                                      onPressed: () {
                                         context.read<UserProvider>().addItem("ADMINIATRATIVE LAW");
                                         Navigator.pop(context);
                                      },
                                      child: Text("ADD",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)))
                                ],
                              ));
                    }),
                
               
                InkWell(
                    child: Material(
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
                                        image: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT3DY9SJIrg95Sp6FOUJw57eMSyh8M-K5NDXpwOLOyl68rCouiJErWb96DZ1jvyV3h404&usqp=CAU"),
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
                                    
                                    Center(
                                      child: Text(
                                        "FAMILY LAW",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 92, 42, 179),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Deals with family related cases",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 13,
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
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("DO YOU WANT TO ADD THIS CLASS?",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15)),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        disabledBackgroundColor: Colors.grey,
                                        backgroundColor:
                                            Color.fromARGB(255, 92, 42, 179),
                                      ),
                                      onPressed: () {
                                         context.read<UserProvider>().addItem("FAMILY LAW");
                                         Navigator.pop(context);
                                      },
                                      child: Text("ADD",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)))
                                ],
                              ));
                    }),
                
               
                // Add other items similarly
              ],
              options: CarouselOptions(
                height: height / 4,
                autoPlay: true,
                aspectRatio: 1 / 10,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: false,
                autoPlayAnimationDuration: Duration(milliseconds: 80),
                viewportFraction: 0.6,
              ),
            ),
          ),
    );
  }
}







// NEXT CLASS
class Carousel4 extends StatelessWidget {
  const Carousel4({super.key});

  @override
  Widget build(BuildContext context) {
     var size, height;
      size = MediaQuery.of(context).size;
    height = size.height;
    return Scaffold(
      body: Container(
            child: CarouselSlider(
              items: [
                InkWell(
                    child: Material(
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
                                        image: NetworkImage(
                                            "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Android_phone.jpg/1200px-Android_phone.jpg"),
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
                                      "MOBILE OS",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Android , Mac ",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 13,
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
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("DO YOU WANT TO ADD THIS CLASS?",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15)),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        disabledBackgroundColor: Colors.grey,
                                        backgroundColor:
                                            Color.fromARGB(255, 92, 42, 179),
                                      ),
                                      onPressed: () {
                                         context.read<UserProvider>().addItem("MOBILE OS");
                                         Navigator.pop(context);
                                      },
                                      child: Text("ADD",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)))
                                ],
                              ));
                    }),
               
                InkWell(
                    child: Material(
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
                                        image: NetworkImage(
                                            "https://t4.ftcdn.net/jpg/05/66/49/53/360_F_566495371_K3ncEU4jxBG8oFbQhkeVl25cVnSZXofs.jpg"),
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
                                      "RTOS",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Real Time OS",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 13,
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
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("DO YOU WANT TO ADD THIS CLASS?",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15)),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        disabledBackgroundColor: Colors.grey,
                                        backgroundColor:
                                            Color.fromARGB(255, 92, 42, 179),
                                      ),
                                      onPressed: () {
                                         context.read<UserProvider>().addItem("RTOS");
                                         Navigator.pop(context);
                                      },
                                      child: Text("ADD",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)))
                                ],
                              ));
                    }),
               


                InkWell(
                    child: Material(
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
                                        image: NetworkImage(
                                            "https://resorcio.com/_next/image?url=https%3A%2F%2Fd1xuqjt1wg0fxw.cloudfront.net%2Fc53c8990-0ed3-11ec-a04a-4d7bc8f5a34a.jpg&w=512&q=75"),
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
                                    
                                    Center(
                                      child: Text(
                                        "DISTRIBUTED OS",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 92, 42, 179),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "uses more computers",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 13,
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
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("DO YOU WANT TO ADD THIS CLASS?",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15)),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        disabledBackgroundColor: Colors.grey,
                                        backgroundColor:
                                            Color.fromARGB(255, 92, 42, 179),
                                      ),
                                      onPressed: () {
                                         context.read<UserProvider>().addItem("DISTRIBUTED OS");
                                          Navigator.pop(context);
                                      },
                                      child: Text("ADD",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)))
                                ],
                              ));
                    }),
               



                InkWell(
                    child: Material(
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
                                        image: NetworkImage(
                                            "https://cdn.prod.website-files.com/670cbf146221ee06c3cdd761/6741adad9f33cda66b032430_66d01633b38bce603838a09f_66d016120fa93fdadaee12c7_1_Multiuser%252520Operating%252520System.webp"),
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
                                    
                                    Center(
                                      child: Text(
                                        "MUTITASKING OS",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 92, 42, 179),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Mutiusers can access",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 13,
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
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("DO YOU WANT TO ADD THIS CLASS?",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15)),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        disabledBackgroundColor: Colors.grey,
                                        backgroundColor:
                                            Color.fromARGB(255, 92, 42, 179),
                                      ),
                                      onPressed: () {
                                         context.read<UserProvider>().addItem("MULTITASKING OS");
                                         Navigator.pop(context);
                                      },
                                      child: Text("ADD",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)))
                                ],
                              ));
                    }),
               



                InkWell(
                    child: Material(
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
                                        image: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTArnHSIzsRB7jGeGPdubhZfMC0Sv7Ul4ugYg&s"),
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
                                    
                                    Center(
                                      child: Text(
                                        "NETWORKING OS",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 92, 42, 179),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Software that connects multiple devices",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 13,
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
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("DO YOU WANT TO ADD THIS CLASS?",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15)),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        disabledBackgroundColor: Colors.grey,
                                        backgroundColor:
                                            Color.fromARGB(255, 92, 42, 179),
                                      ),
                                      onPressed: () {
                                         context.read<UserProvider>().addItem("NETWORKING OS");
                                          Navigator.pop(context);
                                      },
                                      child: Text("ADD",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)))
                                ],
                              ));
                    }),
               
               
                // Add other items similarly
              ],
              options: CarouselOptions(
                height: height / 4,
                autoPlay: true,
                aspectRatio: 1 / 10,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: false,
                autoPlayAnimationDuration: Duration(milliseconds: 80),
                viewportFraction: 0.6,
              ),
            ),
          ),
    );
  }
}




// NEXT CLASS
class Carousel5 extends StatelessWidget {
  const Carousel5({super.key});

  @override
  Widget build(BuildContext context) {
     var size, height;
      size = MediaQuery.of(context).size;
    height = size.height;
    return Scaffold(
      body: Container(
            child: CarouselSlider(
              items: [
                InkWell(
                    child: Material(
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
                                        image: NetworkImage(
                                            "https://blueskyletters.github.io//uploads/malayalam-2.jpg"),
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
                                    
                                    Center(
                                      child: Text(
                                        "MALAYALAM LITERATURES",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 92, 42, 179),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Read a lot, Knowledge cannot be stolen",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 13,
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
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("DO YOU WANT TO ADD THIS CLASS?",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15)),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        disabledBackgroundColor: Colors.grey,
                                        backgroundColor:
                                            Color.fromARGB(255, 92, 42, 179),
                                      ),
                                      onPressed: () {
                                         context.read<UserProvider>().addItem("MALAYALAM LITERATURES");
                                          Navigator.pop(context);
                                      },
                                      child: Text("ADD",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)))
                                ],
                              ));
                    }),
                
                InkWell(
                    child: Material(
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
                                        image: NetworkImage(
                                            "https://www.st-petersschool.co.uk/_site/data/files/images/content/4C1D398C16F9AAD0E9BB77D40DDA1366.jpg"),
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
                                    
                                    Center(
                                      child: Text(
                                        "ENGLISH LITERATURES",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 92, 42, 179),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Vocabularies are the backbone a languae",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15,
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
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text("DO YOU WANT TO ADD THIS CLASS?",
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 92, 42, 179),
                                        fontSize: 15)),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        disabledBackgroundColor: Colors.grey,
                                        backgroundColor:
                                            Color.fromARGB(255, 92, 42, 179),
                                      ),
                                      onPressed: () {
                                         context.read<UserProvider>().addItem("ENGLISH LITERARTURES");
                                          Navigator.pop(context);
                                      },
                                      child: Text("ADD",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)))
                                ],
                              ));
                    }),
                
                
                // Add other items similarly
              ],
            options: CarouselOptions(
                height: height / 4,
                autoPlay: true,
                aspectRatio: 1 / 10,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: false,
                autoPlayAnimationDuration: Duration(milliseconds: 80),
                viewportFraction: 0.6,
              ),
            ),
          ),
    );
  }
}