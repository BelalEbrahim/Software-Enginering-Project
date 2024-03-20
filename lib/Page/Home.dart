import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:os_project/Page/Login.dart'; // Assuming your login page is imported from this path
import 'package:os_project/comp/Txt.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Center(
            child: Column(
              children: [
                txt(tex: FirebaseAuth.instance.currentUser!.email ?? ""),
                IconButton(
                  onPressed: () async {
                    try {
                      await FirebaseAuth.instance.signOut();
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                        (route) => false,
                      );
                    } catch (e) {
                      print("Error signing out: $e");
                    
                    }
                  },
                  icon: Icon(Icons.logout),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
