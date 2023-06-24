import 'package:firebase_auth/firebase_auth.dart';

class Auth{
  FirebaseAuth auth = FirebaseAuth.instance;
  //current user in firebase
User? authuser = FirebaseAuth.instance.currentUser;
}