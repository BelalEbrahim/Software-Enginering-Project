import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:os_project/comp/TextFild.dart';
import 'package:os_project/comp/Txt.dart';
import 'package:os_project/comp/button.dart';
import 'package:os_project/comp/icons_bottom.dart';
import 'Register.dart';

class Login extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final String email;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff08B09E),
        body: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 70),
                  SizedBox(
                    height: 800,
                    width: 800,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1600),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //Login
                            const SizedBox(height: 35,),
                           const txt(tex: "LOGIN"),
                            const SizedBox(height: 35,),
                            //Email
                            Text_Fild(
                              controller: emailController,
                              hintText: "Email",
                              obscureText: false,
                              icon: const Icon(Icons.email_outlined),
                            ),
                            const SizedBox(height: 22,),
                            //Password
                            Text_Fild(
                              controller: passwordController,
                              hintText: "Password",
                              obscureText: true,
                              icon: const Icon(Icons.lock_outline),
                            ),
                            const SizedBox(height: 5,),
                            //forget password
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25.0),
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                 InkWell(
                                  onTap: () {
                                    print('Forget password?');
                                  },
                                   child:  const Text(
                                     'Forget password?',
                                     style: TextStyle(color: Color(0xff08B09E),fontSize: 20,fontWeight: FontWeight.bold),
                                   ),
                                 )
                                ],
                              ),
                            ),
                            ////Remember me
                            Padding(padding: const EdgeInsets.all(10),
                              child: Row(
                                  children: [
                                    Radio(
                                        value: 1,
                                        groupValue: 2,
                                        onChanged: (newValue){

                                        }
                                    ),
                                    const Text("Remember Me",
                                      style: TextStyle(
                                          color: Color(0xff08B09E),
                                          fontSize: 20,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ]
                              ),
                            ),
                            const SizedBox(height: 40,),
                            //Sign in btn
                             Button(
                              onPressed: () async{
                                try {
                                  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                                      email: emailController.text,
                                      password: passwordController.text
                                  );
                                  Navigator.of(context).pushReplacementNamed("Home");
                                } on FirebaseAuthException catch (e) {
                                  if (e.code == 'user-not-found') {
                                    print('No user found for that email.');
                                  } else if (e.code == 'wrong-password') {
                                    print('Wrong password provided for that user.');
                                  }
                                }


                              },
                              btnColor: Color(0xff08B09E),
                              textColor: Colors.white,
                              txt: "Sign in",
                            ),
                            const SizedBox(height: 15,),
                            //Sign up btn
                             Button(
                               onPressed: (){
                                 Navigator.of(context).pushReplacementNamed("Register");
                               },
                              btnColor: Colors.white,
                              textColor: Color(0xff08B09E),
                              txt: "Sign up",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  icons_bottom(
                    AonTap: (){

                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}