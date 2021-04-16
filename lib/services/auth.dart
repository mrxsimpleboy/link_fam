import '../models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AppUser _userFromUserCredential(UserCredential userCred) {
    return userCred != null ? AppUser(uid: userCred.user.uid) : null;
  }

  AppUser _userFromFirebaseUser(User user) {
    return user != null ? AppUser(uid: user.uid) : null;
  }

  Stream<AppUser> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  Future<AppUser> signInAnonymously() async {
    try {
      UserCredential user = await _auth.signInAnonymously();
      return _userFromUserCredential(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<AppUser> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      dynamic userCred = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return _userFromUserCredential(userCred);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<AppUser> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCred = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = userCred.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
