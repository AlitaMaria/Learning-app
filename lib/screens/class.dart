import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:learningapp/screens/new.dart';
import 'package:learningapp/screens/provider.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyClasses extends StatefulWidget {
  MyClasses({super.key});

  @override
  State<MyClasses> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyClasses> {
List <String> adclasses=[];
String? _username;
final List<double> progressList = [0.3, 0.6, 0.8, 0.5];
 final DatabaseReference ref=FirebaseDatabase.instance.ref();
 


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    copyFromProvider(context);
    addUserclasses();
    retrieveData();

    print("my classes invoked");
  }
  void copyFromProvider(BuildContext context) {
    final provider = Provider.of<UserProvider>(context, listen: false);
    setState(() {
      adclasses = List.from(provider.items,growable: true); // Copy values from Provider list
    });}

 Future<String?> retrieveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? username = prefs.getString('Username'); // Get the saved username
    // Ensures widget is still in the tree before updating the state

    setState(() {
      _username = username;
      print("shared preference $_username  $username");
    });
        getUserClasses();
  }

  Future<void> addUserclasses() async {


     try {
      // Reference to the user's data in Firebase (using 'users' and the 'username')
//adding data to database
//
      DataSnapshot snapshot = await ref.get();
     if (snapshot.exists) {
  // ✅ Retrieve existing classes before adding new ones
  List<dynamic> existingClasses = snapshot.child(_username!).child("addedClasses").value as List<dynamic>? ?? [];
  print(existingClasses.runtimeType);
  List<String> classList = List<String>.from(existingClasses, growable: true);

  for (String item in adclasses) {
    if (!classList.contains(item)) {  // ✅ Avoid duplicates
      classList.add(item);
    }
  }

  await ref.child(_username!).update({
    "addedClasses": classList, // ✅ Update merged list
   
  });
   print("hhhhhhhhhhhhhhhhhhhhh ${classList.runtimeType}");
}      
    }
      catch (e) {
      print("Error fetching user data: $e");
    
    };
    
  //   }


  }

  

void getUserClasses() {
    print("ddddddddddddd $_username");
  if (_username == null) return;

DatabaseReference userRef = ref.child(_username!).child("addedClasses");
userRef.onValue.listen((DatabaseEvent event) {
  if (event.snapshot.exists && mounted) {
    List<dynamic> classes = event.snapshot.value as List<dynamic>;
    print("yyyyyyyyyyyyyyyyyyyy ${classes.runtimeType}");
    List<String> classList = List<String>.from(classes, growable: true);
    print("ppppppppppppppppppppppppppppp ${classList.runtimeType}");

    // ✅ Append new data instead of replacing it
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    List<String> updatedList = List<String>.from(userProvider.items, growable: true);

    for (String item in classList) {
      if (!updatedList.contains(item)) {  // Avoid duplicates
        updatedList.add(item);
      }
    }

    userProvider.updateClasses(updatedList); // ✅ Update with merged list
    print("User classes updated: $updatedList");
  }
});

}

  @override

  
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: adclasses.length,
        itemBuilder: (context, index) {
          return ListTile(
              tileColor: const Color.fromRGBO(195, 167, 211, 1),
              title: Text(adclasses[index],
                
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text("On going class"),
                  SizedBox(height: 5),
                  LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width * 0.7,
                    lineHeight: 8.0,
                    percent: progressList[index], // Different progress for each item
                    progressColor: Color.fromARGB(255, 92, 42, 179),
                    backgroundColor: Colors.grey[300]!,
                    barRadius: Radius.circular(5),
                    animation: true,
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => New()));
              },
              
             
              );
             
               
        },
      ),
      
    );
  }
}

