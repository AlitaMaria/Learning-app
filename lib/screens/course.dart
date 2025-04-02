import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:learningapp/screens/homescreen.dart';
import 'package:learningapp/screens/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Course extends StatefulWidget {
  const Course({super.key});

  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  String? choice = null;
  bool value = false;
  final DatabaseReference ref = FirebaseDatabase.instance.ref();
  String? _username;

  Future<String?> retrieveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? username = prefs.getString('Username'); // Get the saved username
    // Ensures widget is still in the tree before updating the state

    setState(() {
      _username = username;
    });
  }

  Future<void> getUserLevel() async {
    try {
      // Reference to the user's data in Firebase (using 'users' and the 'username')

      // Fetch the data of the user
      DataSnapshot snapshot = await ref.get();

      if (snapshot.exists) {
        if (value == true && choice == "Beginner") {
          await ref.child(_username!).update({
            "Level": "Beginner",
          });
        }

        if (value == true && choice == "Intermediate") {
          await ref.child(_username!).update({
            "Level": "Intermediate",
          });
        }

        if (value == true && choice == "Expert") {
          await ref.child(_username!).update({
            "Level": "Expert",
          });
        }
      } else {
        print("User does not exist.");
      }
    } catch (e) {
      print("Error fetching user data: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Loginpage(),
                    ));
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Color.fromARGB(255, 92, 42, 179),
              )),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Learning App",
                  style: TextStyle(
                      color: Color.fromARGB(255, 92, 42, 179),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 350,
                  width: 300,
                  child: Image.asset("assets/imag.jpg"),
                ),
                Text(
                  "Select your course level",
                  style: TextStyle(
                      color: Color.fromARGB(255, 92, 42, 179),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Row(
                  children: [
                    Expanded(
                        child: ChoiceChip(
                      label: Text("Beginner"),
                      selected: choice == "Beginner",
                      onSelected: (bool selected) {
                        setState(() {
                          choice = selected ? "Beginner" : null;
                        });
                      },
                    )),
                    Expanded(
                        child: ChoiceChip(
                      label: Text("Intermediate"),
                      selected: choice == "Intermediate",
                      onSelected: (bool selected) {
                        setState(() {
                          choice = selected ? "Intermediate" : null;
                        });
                      },
                    )),
                    Expanded(
                        child: ChoiceChip(
                      label: Text("Expert"),
                      selected: choice == "Expert",
                      onSelected: (bool selected) {
                        setState(() {
                          choice = selected ? "Expert" : null;
                        });
                      },
                    )),
                  ],
                ),
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
                    Text("Are you sure?")
                  ],
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      disabledBackgroundColor: Colors.grey,
                      backgroundColor: Color.fromARGB(255, 92, 42, 179),
                    ),
                    onPressed: () {
                      retrieveData();
                      getUserLevel();
                      if (value && choice != null) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Homrscreen()));
                      }
                    },
                    //  onPressed: (){
                    //   if(value == true && choice=="Beginner" ){
                    //     Navigator.push(context, MaterialPageRoute(builder: (context)=>Beginner()));
                    //   }
                    //   else if(value == true && choice=="Intermediate" ){

                    //     Navigator.push(context, MaterialPageRoute(builder: (context)=>Intermediate()));

                    //   }
                    //    else if(value == true && choice=="Expert" ){

                    //     Navigator.push(context, MaterialPageRoute(builder: (context)=>Expert()));

                    //   }
                    //  },

                    child: Text(
                      "Continue",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ),
        ));
  }
}
