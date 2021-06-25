import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:healthful/KullaniciIslem/Auth.dart';
import 'package:healthful/Pages/email_sign_in.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SignInButton(
              Buttons.Email,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EmailSignInPage()));
              },
            ),
            SignInButton(
              Buttons.Google,
              onPressed: () async{
               final user=await Provider.of<Auth>(context,listen:false).signInWithGoogle();
                print(user);
              },
            ),
          ],
        ),
      ),
    );
  }
}
