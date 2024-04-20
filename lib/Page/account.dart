// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Login.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
                title: Container(
                    // alignment: Alignment.topCenter,
                    width: 200,
                    height: 50,
                    padding: EdgeInsets.all(12),
                    child: const Text("Account",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        )))),
            body: 
            
            SingleChildScrollView(
               scrollDirection: Axis.vertical,
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Center(
                  child: ClipRRect(
                            borderRadius: BorderRadius.circular(500),
                            child:  const Image(
                              height: 161,
                              width: 161,
                              fit: BoxFit.cover,
                              image:AssetImage('Asset/user.png')
                              ),
                          ),
                ),
                Center(
                  child: Text("My Name",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
                ),
                Center(
                  child: Text(
                    FirebaseAuth.instance.currentUser!.email ?? "",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(height: 22,),
                Center(
                  child: Text("Become an instructor",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          color: Color(0xff08B09E))),
                ),
                SizedBox(height: 22,),
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("video preferences",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w300,
                              )),
                  SizedBox(height: 8,),
                              
                   Text("Download options",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              )),
                  SizedBox(height: 8,),
                  Text("Video playback options",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              )),
                  SizedBox(height: 15,),
                   Text("Account settings",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w300,
                              )),
                  SizedBox(height: 8,),
                   Text("Career goal",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              )),
                  SizedBox(height: 8,),
                  Text("Account security",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              )),
                  SizedBox(height: 8,),
                   Text("Learning reminders",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              )),
                  SizedBox(height: 15,),
                   Text("Help and Support",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w300,
                              )),
                  SizedBox(height: 8,),
                  Text("About App",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              )),
                  SizedBox(height: 8,),
                   Text("Share the app",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              )),
                  ],),
                ),
                SizedBox(height: 22,),
                Center(
                  child: InkWell(
                    onTap: () async {
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
                    child: Text("Sign out",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Color(0xff08B09E))),
                  ),
                ),
                SizedBox(height: 10,),
                Center(
                  child: Text("App v1.0",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          )),
                ),
                SizedBox(height: 10,),

                
                
              ]),
            ),
            );
  }
}