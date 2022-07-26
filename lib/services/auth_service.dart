
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class AuthService {
  static final _auth = FirebaseAuth.instance;
//Authication sign in
 static signInUser(BuildContext context, String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = userCredential.user;
      return user;
    } catch (error) {
      print('Sign In ***** => $error');
      return null;
    }
  }

//Authication sign up
 static signUpUser(BuildContext context, String name, String email, String password) async {
    try{
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = userCredential.user;
      return user;
    }catch(error){
      print('Sign UP ***** => $error');
      return null;
    }
  }
  }