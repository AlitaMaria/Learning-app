

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:learningapp/firebase_options.dart';
import 'package:learningapp/screens/provider.dart';

import 'package:learningapp/screens/splash.dart';
import 'package:provider/provider.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=> UserProvider())
    ],
    child: 
    
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    ));
  }
}