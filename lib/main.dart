import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:os_project/Page/Home.dart';
import 'package:os_project/Page/Register.dart';
import 'Page/Login.dart';
import 'firebase_options.dart';
import 'Page/Video_playback_option.dart';
import 'package:os_project/Page/home_layout.dart';





void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(APP());
}

class APP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirebaseAuth.instance.currentUser ==null? Login():HomeLayout(),
      routes: {
        "Login":(context) => Login(),
        "Home":(context) => HomeLayout(),
        "Register":(context) => Register(),
        "Voption":(context)=> Video_playback_option(),
      },
    );
  }
}