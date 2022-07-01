import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyUser {
  final String uid;

  MyUser({required this.uid});
}

class AuthBase {
  MyUser _userFromFirebaseUser(User? user) {
    return MyUser(uid: user!.uid);
  }

  Future<MyUser?> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      final authResult = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return _userFromFirebaseUser(authResult.user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<MyUser?> loginWithEmailAndPassword(String email, String password) async {
    try {
      final authResult = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return _userFromFirebaseUser(authResult.user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }
}
