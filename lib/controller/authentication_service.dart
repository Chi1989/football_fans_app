import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class AuthenticationService {

  // CREATING AN INSTANCE OF FIREBASE
  final FirebaseAuth _firebaseAuth;

  AuthenticationService(this._firebaseAuth);

 //SIGN UP CREATION FOR USERS
 Future<void> signUpWithEmail({
  required String email,
   required String password,
   required BuildContext context,
}) async {
   try {
     await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
   } on FirebaseAuthException catch (e) {
    // print(e.code);
        showSnackBar(context, e.message!);
   }
 }
}

void showSnackBar(BuildContext context, String? message) {
  ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message!))
  );
}




