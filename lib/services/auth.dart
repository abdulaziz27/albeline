import 'package:firebase_auth/firebase_auth.dart';
// part of 'view_models.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  // sign in anon
  static Future<FirebaseUser> signInAnonymous() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and password

  // register with email and password
  static Future<void> signUp(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Stream
  static Stream<FirebaseUser> get fireBaseUserStream =>
      _auth.onAuthStateChanged;

  // sign out
  static Future<void> signOut() async {
    _auth.signOut();
  }
}
