import 'package:flutter/material.dart';
import 'package:learningapp/screens/course.dart';
import 'package:learningapp/screens/createacc.dart';
import 'package:learningapp/screens/home.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:learningapp/screens/provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import FirebaseAuth for user sign-in

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool value = false;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  final String facebookurl = "https://en-gb.facebook.com/login/web/";
  final String Googleurl = "https://www.google.co.in/";

  final DatabaseReference ref =
      FirebaseDatabase.instance.ref(); // Firebase reference

  // Firebase Auth instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Email Format Validator
  bool isValidEmail(String email) {
    String emailPattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regExp = RegExp(emailPattern);
    return regExp.hasMatch(email);
  }

  Future<void> _signIn() async {
  
    try {
      // Get the email and password from the controllers
      String email = emailcontroller.text;
      String password = passwordcontroller.text;
      String username = userNameController.text;

      if (email.isEmpty || password.isEmpty || username.isEmpty) {
        showMessage("Please enter details completely");
        return;
      }

      // Sign in the user with Firebase Auth
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Get the signed-in user
      User? user = userCredential.user;

      if (user != null) {
       

        DatabaseReference userRef = ref
            .child(userNameController.text); // Firebase keys don't support '.'
        DataSnapshot snapshot = await userRef.get();

        if (snapshot.exists) {
          
          var data = Map<String, dynamic>.from(snapshot.value as Map);

          var name = data["userName"];
          var pwd = data["password"];
         
          if (name == userNameController.text &&
              pwd == passwordcontroller.text) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Course()));
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                   await prefs.setBool('isLoggedIn', true); 
          prefs.setString('Username', userNameController.text);
          prefs.setString('Email', emailcontroller.text);
          prefs.setString('Password', passwordcontroller.text);
          

          }
          
           
          

        
// provider reads the data
           context.read<UserProvider>().changeUsername(
                          newUsername: userNameController.text,
                          newPassword: passwordcontroller.text,
                          newmail: emailcontroller.text);
        } 
      } else {
        const snackdemo = SnackBar(
          content: Text('Hii this is GFG\'s SnackBar'),
          backgroundColor: Colors.green,
          elevation: 10,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(5),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackdemo);
      }
    } on FirebaseAuthException catch (e) {
      // Handle error
      print('Error: ${e.message }');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("wrong username or password")));
    }
  }

  void showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

// shared preference functions

// store data

  // Facebook login URL launcher
  Future<void> _launcherUrlfacebook() async {
    final Uri url = Uri.parse(facebookurl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw "Error in the URL: $facebookurl";
    }
  }

  // Google login URL launcher
  Future<void> _launcherUrlgoogle() async {
    final Uri url = Uri.parse(Googleurl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw "Error in the URL: $Googleurl";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
          icon: Icon(Icons.arrow_back_ios,
              color: Color.fromARGB(255, 92, 42, 179)),
        ),
        title: Row(
          children: [
            SizedBox(width: 80),
            Text(
              "LOG IN",
              style: TextStyle(
                  color: Color.fromARGB(255, 92, 42, 179),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Center(
                child: Text("Learning App",
                    style: TextStyle(
                        color: Color.fromARGB(255, 92, 42, 179),
                        fontSize: 30,
                        fontWeight: FontWeight.bold))),
            Padding(padding: EdgeInsets.all(15)),
            Center(
                child: Text("Enter your login details to access your account",
                    style: TextStyle(
                        color: Color.fromARGB(255, 92, 42, 179),
                        fontSize: 15,
                        fontWeight: FontWeight.bold))),
            Padding(padding: EdgeInsets.only(bottom: 25)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 160,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor:
                            const Color.fromARGB(255, 8, 107, 188)),
                    onPressed: _launcherUrlfacebook,
                    child: Row(
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.white,
                        ),
                        Text(
                          "Facebook",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 160,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor:
                            const Color.fromARGB(255, 227, 14, 103)),
                    onPressed: _launcherUrlgoogle,
                    child: Row(
                      children: [
                        Icon(
                          Icons.g_mobiledata,
                          color: Colors.white,
                        ),
                        Text(
                          "Google",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  controller: userNameController,
                  decoration: InputDecoration(
                    labelText: 'User Name',
                    labelStyle: TextStyle(
                        color:
                            Color.fromARGB(255, 92, 42, 179)), // Purple label
                    hintText: 'Enter your User Name',
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 92, 42, 179)), // Purple hint
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 92, 42, 179),
                          width: 2), // Purple border when enabled
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 92, 42, 179),
                          width: 2), // Purple border when focused
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        color:
                            Color.fromARGB(255, 92, 42, 179)), // Purple label
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 92, 42, 179)), // Purple hint
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 92, 42, 179),
                          width: 2), // Purple border when enabled
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 92, 42, 179),
                          width: 2), // Purple border when focused
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  controller: passwordcontroller,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        color:
                            Color.fromARGB(255, 92, 42, 179)), // Purple label
                    hintText: 'Enter your Password',
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 92, 42, 179)), // Purple hint
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 92, 42, 179),
                          width: 2), // Purple border when enabled
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 92, 42, 179),
                          width: 2), // Purple border when focused
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Row(
                  children: [
                    Checkbox(
                        tristate: true,
                        value: value,
                        onChanged: (bool? newvalue) {
                          setState(() {
                            value = newvalue!;
                          });
                        }),
                    Text(
                      "Remember Me?",
                      style: TextStyle(
                        color: Color.fromARGB(255, 92, 42, 179),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 80),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(10)),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 92, 42, 179)),
                onPressed: () async {
                  // Make the onPressed async
                  await _signIn();
                  userNameController.clear();

                  emailcontroller.clear();
                  passwordcontroller.clear();
                },
                child: Text(
                  "Login with your account",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 40),
              child: Center(
                child: Row(
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Color.fromARGB(255, 92, 42, 179)),
                    ),
                    TextButton(
                        onPressed: () {

                         
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateAcc()));
                        },
                        child: Text("Create Account",
                            style: TextStyle(
                                color: Color.fromARGB(255, 80, 22, 243))))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
