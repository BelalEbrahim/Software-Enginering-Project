import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:os_project/Page/Home.dart';
import 'package:os_project/comp/Google_Signin.dart'; // Make sure to import the Google_Signin file

class icons_bottom extends StatelessWidget {
  final void Function()? AonTap;

  void _logINWithFacebook() async{

  }

  const icons_bottom({
    Key? key,
    required this.AonTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 30,),
        Container(
          color: Colors.white,
          width: 45,
          height: 45,
          child: InkWell(
            onTap: () async {
              try {
                final user = await Uaer_controller.loginWithGoogle(); // Ensure the correct class name is used
                if (user != null ) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Home())
                  );
                }
              } on FirebaseAuthException catch (error) {
                print(error.message);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(error.message ?? "Something went wrong"))
                );
              } catch (error) {
                print(error);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(error.toString()))
                );
              }
            },
            child: Image(image: AssetImage("Asset/Google.png")),
          )
        ),
        const SizedBox(width: 16,),
        Container(
          color: Colors.white,
          width: 45,
          height: 45,
          child: InkWell(
            onTap: (){
              _logINWithFacebook();
            },
            child: Image(image: AssetImage("Asset/Facebook.png"), height: 20, width: 20,),
          ),
        ),
        const SizedBox(width: 16,),
        Container(
          color: Colors.white,
          width: 45,
          height: 45,
          child: InkWell(
            onTap: AonTap,
            child: Image(image: AssetImage("Asset/Apple.png"), height: 30, width: 30,),
          ),
        ),
      ],
    );
  }
}
