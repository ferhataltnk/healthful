import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'userInfo.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String adR;

  int parolaR;
  String emailR;

  @override
  Widget build(BuildContext context) {
    void _showDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text("Kayıt Başarısız!"),
            content: new Text("Hiçbir değer boş girilemez."),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
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

    void _showDialog2() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text("Kayıt Başarılı!"),
            content: new Text("Sisteme Kayıt Olundu."),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
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
      resizeToAvoidBottomInset: false, //Klavye gelince ekranın kaymasını önler
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              SizedBox(height: 100,),
              Container(
                margin: EdgeInsets.symmetric(vertical:3),
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(150),
                  borderRadius:  BorderRadius.circular(10),),
                child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                      labelText: "İsim",
                    ),
                    onChanged: (String value) {
                      setState(() {
                        adR = value;
                      });
                    }),
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical:3),
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(150),
                  borderRadius:  BorderRadius.circular(10),),
                child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                      labelText: "Parola",
                    ),
                    onChanged: (String value) {
                      setState(() {
                        parolaR = int.parse(value);
                      });
                    }),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical:3),
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(150),
                  borderRadius:  BorderRadius.circular(10),),

                child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                      labelText: "E mail",
                    ),
                    onChanged: (String value) {
                      setState(() {
                        emailR = value;
                      });
                    }),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical:25),
                decoration: BoxDecoration(
                  color: Colors.white.withAlpha(150),
                  borderRadius:  BorderRadius.circular(10),),
                child: TextButton(
                    onPressed: () {
                      if (adR == null ||

                          emailR == null ||
                          parolaR == null)
                        _showDialog();
                      else {
                        UserInfo user = UserInfo(
                            adU: adR,

                            emailU: emailR,
                            parolaU: parolaR);
                        Navigator.pushNamed(context, '/login', arguments: user);
                        _showDialog2();
                      }
                    },
                    child: Text("Kayıt Ol",style:TextStyle(color: Colors.black45)),),
              ),
              SizedBox(height: 100,)
            ],
          ),
        ),
      ),
    );
  }
}
