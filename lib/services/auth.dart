import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user
  DictUser? _userFromFirebaseUser(User? user) {
    return user != null ? DictUser(user.uid) : null;
  }

  //get data auth change
  Stream<DictUser?> get user {
    return _auth
        .authStateChanges()
        .asyncMap((event) => _userFromFirebaseUser(event));
  }

  // log in anonymously
  Future logInAnon() async {
    try {
      var result = await _auth.signInAnonymously();
      var user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //log in with email & password

  //register with email & password

  // log out
}
