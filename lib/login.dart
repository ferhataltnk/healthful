
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:healthful/main.dart';
import "package:healthful/userInfo.dart";
import 'package:healthful/register.dart';



class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String emaill;
  int parolal;




  @override
  Widget build(BuildContext context) {

    UserInfo user = ModalRoute.of(context).settings.arguments;



    void _showDialog2() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Giriş Başarsız!"),
            content: new Text("Bilgiler Eksik Veya Hatalı!"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("Kapat"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Column(

                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(150),
                      borderRadius:  BorderRadius.circular(10),),

                    child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                          labelText: "E mail",

                        ),
                        onChanged: (String value) {
                          setState(() {
                            emaill = value;
                          });
                        }),
                  ),


                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(150),
                      borderRadius:  BorderRadius.circular(10),),
                    margin: EdgeInsets.symmetric(vertical:5),
                    child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                          labelText: "Parola",
                        ),
                        onChanged: (String value) {
                          setState(() {
                            parolal = int.parse(value);
                          });
                        }),
                  ),

                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(150),
                    borderRadius:  BorderRadius.circular(10),),
                  child: TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, "/register");
                      },
                      child: Text("Kayıt Ol",style: TextStyle(color:Colors.black),)),
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(150),
                    borderRadius:  BorderRadius.circular(10),),
                  child: TextButton(
                      onPressed: (){
                        setState(() {
                          if (emaill!=null || parolal !=null) {
                            if(user.parolaU == parolal &&
                                user.emailU == emaill) {
                              Navigator.pushNamed(context,"/",
                                  arguments: user);

                            } else
                              _showDialog2();
                          }
                          else
                            _showDialog2();
                        });
                      },
                      child: Text("Giriş Yap",style: TextStyle(color:Colors.black),)),
                ),
              ],
            ),




          ],
        ),
      ),
    );
  }
}
