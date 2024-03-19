import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Uaer_controller{
  static Future<User?> loginWithGoogle()async{
    final googleAccount = await GoogleSignIn().signIn();
    final googleAuth =await googleAccount?.authentication;
    final Credential =GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
    );
    final userCredential =await FirebaseAuth.instance.signInWithCredential(
      Credential,
    );
    
    return userCredential.user;
  }
}