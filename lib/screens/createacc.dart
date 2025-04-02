import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:learningapp/auth/authservice.dart';
import 'package:learningapp/screens/course.dart';
import 'package:learningapp/screens/loginpage.dart';
import 'package:learningapp/screens/provider.dart';
import 'package:provider/provider.dart';


class CreateAcc extends StatelessWidget {
  // These controllers are already declared here, no need to redeclare them inside build
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _NameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
 final DatabaseReference ref=FirebaseDatabase.instance.ref();

  CreateAcc({super.key});

  void register(BuildContext context) async {
    final auth = Authservice();

    if (_passwordController.text == _confirmPasswordController.text) {
      try {
await ref.child(_NameController.text).set({
  "userName": _NameController.text,
  "email": _emailController.text,
  "password": _passwordController.text,

  });

        await auth.signUpWithEmailPassword(
            _emailController.text, _passwordController.text);



      } catch (e) {
        showDialog(
            context: context,
            builder: ((context) => AlertDialog(
                  title: Text(e.toString()),
                )));
      }
    } else {
      showDialog(
          context: context,
          builder: ((context) => AlertDialog(
                title: Text("Password does not match"),
              )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Loginpage(),
                ),
              );
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color.fromARGB(255, 92, 42, 179),
            )),
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            "Create New Account",
            style: TextStyle(
                color: Color.fromARGB(255, 92, 42, 179),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(60),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
        
                SizedBox(
                  height: 50,
                  width: 300,
                  child:  TextField(
              controller: _NameController,
              decoration: InputDecoration(
                labelText: 'UserName',
                labelStyle: TextStyle(color: Color.fromARGB(255, 92, 42, 179)), // Purple label
                hintText: 'Enter the UserName',
                hintStyle: TextStyle(color: Color.fromARGB(255, 92, 42, 179)), // Purple hint
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 92, 42, 179),width: 2), // Purple border when enabled
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 92, 42, 179),width: 2), // Purple border when focused
                ),
                border: OutlineInputBorder(),
              ),
            ),
                ),
        
                Padding(padding: EdgeInsets.all(15)),
                
                 SizedBox(
                   height: 50,
                  width: 300,
                   child: TextField(
                                 controller: _emailController,
                                 decoration: InputDecoration(
                                   labelText: 'Email',
                                   labelStyle: TextStyle(color: Color.fromARGB(255, 92, 42, 179)), // Purple label
                                   hintText: 'Enter your email',
                                   hintStyle: TextStyle(color: Color.fromARGB(255, 92, 42, 179)), // Purple hint
                                   enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 92, 42, 179),width: 2), // Purple border when enabled
                                   ),
                                   focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 92, 42, 179),width: 2), // Purple border when focused
                                   ),
                                   border: OutlineInputBorder(),
                                 ),
                               ),
                 ),
                Padding(padding: EdgeInsets.all(15)),
                SizedBox(
                  height: 50,
                  width: 300,
                  child:  TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Color.fromARGB(255, 92, 42, 179)), // Purple label
                hintText: 'Enter your Password',
                hintStyle: TextStyle(color: Color.fromARGB(255, 92, 42, 179)), // Purple hint
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 92, 42, 179),width: 2), // Purple border when enabled
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 92, 42, 179),width: 2), // Purple border when focused
                ),
                border: OutlineInputBorder(),
              ),
            ),
                ),
                Padding(padding: EdgeInsets.all(15)),
                SizedBox(
                  height: 50,
                  width: 300,
                  child:  TextField(
              controller: _confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                labelStyle: TextStyle(color: Color.fromARGB(255, 92, 42, 179)), // Purple label
                hintText: 'Confirm your Password',
                hintStyle: TextStyle(color: Color.fromARGB(255, 92, 42, 179)), // Purple hint
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 92, 42, 179),width: 2), // Purple border when enabled
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 92, 42, 179),width: 2), // Purple border when focused
                ),
                border: OutlineInputBorder(),
              ),
            ),
                ),
                Padding(padding: EdgeInsets.all(30
                )),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 92, 42, 179)),
                  onPressed: () async{
                    if(_emailController.text.isEmpty ||_NameController.text.isEmpty||_passwordController.text.isEmpty){
                       showDialog(
            context: context,
            builder: ((context) => AlertDialog(
                  title: Text("Fill all the fields"),
                )));

                    }
                    else{



                    register(context);
                    context.read<UserProvider>().changeUsername(
                          newUsername: _NameController.text,
                          newPassword: _passwordController.text,
                          newmail: _emailController.text);
        
                    
                    Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Course(),
                          ));
                    } 
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
