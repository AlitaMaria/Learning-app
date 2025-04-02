
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:learningapp/carousel.dart';

import 'package:learningapp/screens/homescreen.dart';

class Bookclass extends StatefulWidget {
  const Bookclass({super.key});

  @override
  State<Bookclass> createState() => _BookclassState();
}

class _BookclassState extends State<Bookclass> {
  var size, height, width;
  String Batch = 'Arts & Sports';
  String type = 'Group Study';
  bool value = false;

  Widget GetselectedWidget(){
    switch(Batch){
      case 'Arts & Sports': return Carousel1();
      case 'Networking': return Carousel2();
case 'Law & Constitution': return Carousel3();    
    case 'Hardware & OS': return Carousel4();
    case 'Literatures': return Carousel5();
    default : return Bookclass();
    }
  }

  void showdialogue() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("do you want to book this class"),
              actions: [ElevatedButton(onPressed: () {}, child: Text("Add"))],
            ));
  }

  // List of items in our dropdown menu
  final batchitems = [
    'Arts & Sports',
    'Networking',
    'Law & Constitution',
    'Hardware & OS',
    'Literatures',
  ];

  var typeitems = [
    'Group Study',
    'Self Study'
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
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color.fromARGB(255, 92, 42, 179),
            )),
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            "BOOK YOUR CLASS",
            style: TextStyle(
              color: Color.fromARGB(255, 92, 42, 179),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: CarouselSlider(
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
                                    image: NetworkImage(
                                        "https://static.vecteezy.com/system/resources/thumbnails/046/174/096/small_2x/american-football-champion-poster-with-neon-elements-energy-and-power-photo.jpg"),
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
                                  "Arts and Spots",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 92, 42, 179),
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  "ARTS & Sports",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 92, 42, 179),
                                    fontSize: 10,
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
                                    image: NetworkImage(
                                        "https://st4.depositphotos.com/1000423/23971/i/450/depositphotos_239719906-stock-photo-networking-as-global-concept.jpg"),
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
                                  "Network Aministration",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 92, 42, 179),
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  "NETWORKING",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 92, 42, 179),
                                    fontSize: 10,
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
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBM1AiOm4fDqI9swPDs2GJgYdbbSS19CAv4g&s"),
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
                                    fontSize: 10,
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
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVfHFjjvThId8CVI1md8iZmGHtlDY8bb8wBA&s"),
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
                                  "Law and constitution",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 92, 42, 179),
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  "DRAW & PAINT ARTS",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 92, 42, 179),
                                    fontSize: 10,
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

                // Add other items similarly
              ],
              options: CarouselOptions(
                height: height / 4,
                autoPlay: true,
                aspectRatio: 1 / 10,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 80),
                viewportFraction: 0.6,
              ),
            ),
          ),
          SizedBox(
            height: height / 30,
          ),
         

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 13.0, right: 85),
                child: Text(
                  "Select Class",
                  style: TextStyle(
                    color: Color.fromARGB(255, 92, 42, 179),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Text(
                "Class Type",
                style: TextStyle(
                  color: Color.fromARGB(255, 92, 42, 179),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: Container(
                  height: height / 14,
                  width: width / 2.1,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 92, 42, 179),
                      borderRadius: BorderRadius.circular(7)),
                  child: DropdownButton(
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    // Initial Value
                    value: Batch,

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: batchitems.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        Batch = newValue!;
                        
                      });
                    },
                    dropdownColor: Color.fromARGB(255, 92, 42, 179),
                    iconEnabledColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: height / 14,
                width: width / 2.7,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 92, 42, 179),
                    borderRadius: BorderRadius.circular(7)),
                child: DropdownButton(
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  // Initial Value
                  value: type,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: typeitems.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      type = newValue!;
                    });
                  },
                  dropdownColor: Color.fromARGB(255, 92, 42, 179),
                  iconEnabledColor: Colors.white,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 20),
            child: Text(
              Batch,
              style: TextStyle(
                color: Color.fromARGB(255, 92, 42, 179),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),

           Expanded(child: GetselectedWidget()),
          Row(
            children: [
              Checkbox(
                value: value,
                onChanged: (bool? newvalue) {
                  setState(() {
                    value = newvalue!;
                  });
                },
                activeColor: Colors.black,
              ),
              Padding(padding: EdgeInsets.only(left: 4)),
              Text("Are you sure with the selected class?")
            ],
          ),
          Center(
              child: SizedBox(
            width: width / 1.5,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  disabledBackgroundColor: Colors.grey,
                  backgroundColor: Color.fromARGB(255, 92, 42, 179),
                ),
                onPressed: (value != false)
                    ? () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Homrscreen()))
                    : null,
                child: Text(
                  "Continue",
                  style: TextStyle(color: Colors.white),
                )),
          ))
        ],
      ),
    );
  }
}
