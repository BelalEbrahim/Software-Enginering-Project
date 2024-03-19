import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Login.dart';
import 'package:os_project/comp/TextFild.dart';
import 'package:os_project/comp/Txt.dart';
import 'package:os_project/comp/button.dart';
import 'package:os_project/comp/icons_bottom.dart';


class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                            const SizedBox(height: 19),
                            const txt(tex:'Sign up',),

                            const SizedBox(height: 52,),
                            //Username
                            Text_Fild(
                              controller: UsernameController,
                              hintText: "Username",
                              obscureText: false,
                              icon: const Icon(Icons.person_2_outlined),
                            ),
                            const SizedBox(height: 10,),
                            //Email
                            Text_Fild(
                              controller: emailController,
                              hintText: "Email",
                              obscureText: false,
                              icon: const Icon(Icons.email_outlined),
                            ),
                            const SizedBox(height: 10,),
                            //Password
                            Text_Fild(
                              controller: passwordController,
                              hintText: "Password",
                              obscureText: true,
                              icon: const Icon(Icons.lock_outline),
                            ),
                            const SizedBox(height: 44,),
                            //Sign in btn
                            Button(
                               onPressed: (){
                                 Navigator.of(context).pushReplacementNamed("Login");
                               },
                              btnColor: Colors.white,
                              txt: "Sign in",
                              textColor: Color(0xff08B09E),
                            ),
                            const SizedBox(height: 15,),
                            //Sign up btn
                            Button(
                              onPressed: () async{
                                try {
                                  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                                    email: emailController.text,
                                    password: passwordController.text,
                                  );
                                  Navigator.of(context).pushReplacementNamed("Home");
                                } on FirebaseAuthException catch (e) {
                                  if (e.code == 'weak-password') {
                                    print('The password provided is too weak.');
                                  } else if (e.code == 'email-already-in-use') {
                                    print('The account already exists for that email.');
                                  }
                                } catch (e) {
                                  print(e);
                                }

                              },
                              btnColor: Color(0xff08B09E),
                              txt: "Sign up",
                              textColor: Colors.white,
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
            ),
          ],
        ),
      ),
    );
  }
}
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController UsernameController = TextEditingController();