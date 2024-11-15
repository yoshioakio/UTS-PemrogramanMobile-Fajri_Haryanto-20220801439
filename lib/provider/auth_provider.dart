import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final _fireAuth = FirebaseAuth.instance;

class WisataAuthProvider extends ChangeNotifier {
  final form = GlobalKey<FormState>();

  var islogin = true;
  var enteredEmail = '';
  var enteredPassword = '';

  void submit() async {
    final _isvalid = form.currentState!.validate();

    if (!_isvalid) {
      return;
    }

    form.currentState!.save();

    try {
      if (islogin) {
        // Login dengan email dan password
        await _fireAuth.signInWithEmailAndPassword(
            email: enteredEmail, password: enteredPassword);
      } else {
        // Registrasi dengan email dan password
        await _fireAuth.createUserWithEmailAndPassword(
            email: enteredEmail, password: enteredPassword);
      }
    } catch (e) {
      if (e is FirebaseAuthException) {
        if (e.code == 'email-already-in-use') {
          print("Email sudah digunakan");
        } else if (e.code == 'invalid-email') {
          print("Email tidak valid");
        } else if (e.code == 'weak-password') {
          print("Password terlalu lemah");
        } else {
          print("Terjadi kesalahan: ${e.message}");
        }
      }
    }

    notifyListeners();
  }
}
