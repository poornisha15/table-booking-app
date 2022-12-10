import 'package:firebase_auth/firebase_auth.dart';
class AuthenticationService {
  FirebaseAuth _firebaseAuth;

  AuthenticationService(this._firebaseAuth);

  Future<String> firebaseLogin(String userEmail, String userPassword) async {
    try {
      UserCredential user = await _firebaseAuth.signInWithEmailAndPassword(
          email: userEmail, password: userPassword);
      return "Signed in";
    } on FirebaseAuthException catch (e) {
      return e.message ?? "";
    }
  }
   Future<String> firebaseregister(String userEmail, String userPassword) async {
    try {
      UserCredential user = await _firebaseAuth.createUserWithEmailAndPassword(
          email: userEmail, password: userPassword);
          return "Signed up";
    } on FirebaseAuthException catch (e) {
      return e.message ?? "";
    }
  }}