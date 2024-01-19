import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';


class LoginCtrl {

  static final GoogleSignIn googleSignIn = GoogleSignIn();

  static Future<void> signInWithGoogle(BuildContext context) async {

    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    // Obtain the auth credential from the Google Sign-in account
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;


    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );


    // Sign in with the credential to Firebase Authentication
    await FirebaseAuth.instance.signInWithCredential(credential).then((value) => {
      // log("User Credential Values :  ${value.credential?.accessToken}  "),
      // log("User Credential ID :  ${googleAuth?.idToken}  "),
      log("User Credential ID :  ${value.user?.email}  "),
      log("User Credential ID :  ${value.user?.displayName}  "),

    });}


}
