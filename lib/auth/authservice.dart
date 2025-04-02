import 'package:firebase_auth/firebase_auth.dart';

class Authservice {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<UserCredential> signIn(String email, pwd) async {
    try {
      UserCredential userCredential =
          await auth.signInWithEmailAndPassword(email: email, password: pwd);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  Future<UserCredential> signUpWithEmailPassword(String email, password) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }
}
