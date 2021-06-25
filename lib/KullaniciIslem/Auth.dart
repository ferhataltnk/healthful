import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  User currentUser = FirebaseAuth.instance.currentUser; //İçerdeki kullanıcının bilgilerini tutuyor.



  Future<User> createUserWithEmailAndPassword(
      String email, String password) async {
    final userCredentials = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    return userCredentials.user;
  }

  Future<User> signInWithEmailAndPassword(String email, String password) async {
    final userCredentials = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return userCredentials.user;
  }

  Future<void> sendPasswordResetEmail (String email) async{
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  }



  Future<User> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
    if (googleUser!=null) {
      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Once signed in, return the UserCredential
      UserCredential userCredential =
          await _firebaseAuth.signInWithCredential(credential);
      return userCredential.user;
    }
    else {
      return null;
    }
  }


  Future<void> signOut() async{
   await  _firebaseAuth.signOut();
   await GoogleSignIn().signOut();
  }

  Stream<User> authStatus() {
    return _firebaseAuth.authStateChanges();
  }




  getCurrentUser(String a) {
    final User user = _firebaseAuth.currentUser;
    final uid = user;
    if (a == 'photo') {
      if (uid.photoURL != null) {
        return uid.photoURL;
      } else {
        return 'https://cdn0.iconfinder.com/data/icons/social-media-network-4/48/male_avatar-512.png';
      }
    }
    if (a == 'email') {
      if(uid.email!=null){return uid.email;}
      else{
        return 'Anonim olarak giriş yapılmış';
      }

    }
    if (a == 'isim') {
      if (uid.displayName != null) {
        return uid.displayName;
      } else {
        return 'Kullanıcı';
      }
    }

  }


}