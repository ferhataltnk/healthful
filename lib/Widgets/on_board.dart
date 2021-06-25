import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:healthful/KullaniciIslem/Auth.dart';
import 'package:healthful/Pages/sign_in_page.dart';
import 'package:healthful/main.dart';
import 'package:provider/provider.dart';

class OnBoardWidget extends StatefulWidget {
  @override
  _OnBoardWidgetState createState() => _OnBoardWidgetState();
}

class _OnBoardWidgetState extends State<OnBoardWidget> {
  @override



  Widget build(BuildContext context) {
    final _auth=Provider.of<Auth>(context,listen:false);

    return StreamBuilder<User>(
        stream: _auth.authStatus(),
        builder: (BuildContext context,AsyncSnapshot<dynamic> snapshot) {
          if(snapshot.connectionState == ConnectionState.active){
            return snapshot.data != null ? MainPage() : SignInPage();
          }
          else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }

    );
  }
}

