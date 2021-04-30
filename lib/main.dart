import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthful/Kullanici.dart';
import 'package:healthful/Icecek.dart';
import 'package:healthful/Dinner.dart';
import 'package:healthful/Dessert.dart';
import 'package:healthful/Breakfast.dart';
import 'package:healthful/Detoks2.dart';
import 'package:healthful/Dinner.dart';
import 'package:healthful/Detoks1.dart';
import 'package:healthful/Detoks2.dart';
import 'package:healthful/Detoks3.dart';
import 'package:healthful/Detoks4.dart';
import 'package:healthful/tatli1.dart';
import 'package:healthful/tatli2.dart';
import 'package:healthful/tatli3.dart';
import 'package:healthful/bfast1.dart';
import 'package:healthful/bfast2.dart';
import 'package:healthful/yemek1.dart';
import 'package:healthful/yemek2.dart';
import 'package:healthful/yemek3.dart';
import 'package:healthful/yemek4.dart';
import 'package:healthful/yemek5.dart';
import 'package:healthful/yemek6.dart';
import 'package:healthful/login.dart';
import 'package:healthful/register.dart';
import 'package:healthful/userInfo.dart';
import 'package:healthful/spor1.dart';
import 'package:healthful/spor2.dart';
import 'package:healthful/spor3.dart';
import 'package:healthful/spor4.dart';
import 'package:healthful/Hakkinda.dart';

void main() {
  runApp(healthful());
}

class healthful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'ArchitectsDaughter'),
        debugShowCheckedModeBanner: false,
        initialRoute: '/login',
        routes: {
          '/': (context) => MainPage(),
          '/kullanici': (context) => Kullanici(),
          '/ıcecek': (context) => Icecek(),
          '/dinner': (context) => Dinner(),
          '/dessert': (context) => Dessert(),
          '/breakfast': (context) => Breakfast(),
          '/detoks1': (context) => Detoks1(),
          '/detoks2': (context) => Detoks2(),
          '/detoks3': (context) => Detoks3(),
          '/detoks4': (context) => Detoks4(),
          '/tatlı1': (context) => Tatli1(),
          '/tatlı2': (context) => Tatli2(),
          '/tatlı3': (context) => Tatli3(),
          '/bfast1': (context) => Bfast1(),
          '/bfast2': (context) => Bfast2(),
          '/yemek1': (context) => Yemek1(),
          '/yemek2': (context) => Yemek2(),
          '/yemek3': (context) => Yemek3(),
          '/yemek4': (context) => Yemek4(),
          '/yemek5': (context) => Yemek5(),
          '/yemek6': (context) => Yemek6(),
          '/login': (context) => LoginScreen(),
          '/register': (context) => Register(),
          '/spor1': (context) => Spor1(),
          '/hakkinda': (context) => Hakkinda(),
          '/spor2': (context) => Spor2(),
          '/spor3': (context) => Spor3(),
          '/spor4': (context) => Spor4(),



        });
  }
}
///////////////////////////////////////////////////////////////////////////////
//////////////////        ANA SAYFA           /////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserInfo user = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blueGrey[100],

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage("assets/images/background.jpg"),
            fit:BoxFit.fill,
          ),
        ),
        child: Column(

          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height/5.5,
           // margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white.withAlpha(700),
                borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(30.0),
                    bottomEnd: Radius.circular(30.0)),
              ),
              child: SafeArea(
                child: Container(
                 padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width/15 ,horizontal: 35),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //  crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                      "Merhaba\n ${user.adU}",
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,

                      ),
                        ),

                      CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/images/user.png"),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////YATAY SCROLL BARLAR////////////////////////////////////////////////
            //////////////////////////////////////////////////////////////////////////////////////////
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(top:20),
              child: Text(
                'YİYECEK İÇECEK',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
              ),
            ),
            Container(
                  height: MediaQuery.of(context).size.height /3.4,
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/breakfast',arguments: user);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 140.0,
                            height:  MediaQuery.of(context).size.height /4.3,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/mainBfast.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text("KAHVALTI",style: TextStyle(color:Colors.deepPurple,fontSize: 17,fontWeight: FontWeight.bold),)),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/ıcecek',arguments: user);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 140.0,
                            height: MediaQuery.of(context).size.height /4.3,   //Bütün ölçüleri buna benzer şekilde vereceğim
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/mainJuice.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text("İÇECEK",style: TextStyle(color:Colors.deepPurple,fontSize: 17,fontWeight: FontWeight.bold),)),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/dinner',arguments: user);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 140.0,
                            height:  MediaQuery.of(context).size.height /4.3,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/mainDinner.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text("AKŞAM",style: TextStyle(color:Colors.deepPurple,fontSize: 17,fontWeight: FontWeight.bold),)),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/dessert',arguments: user);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 140.0,
                            height:  MediaQuery.of(context).size.height /4.3,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/mainDessert.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text("TATLI",style: TextStyle(color:Colors.deepPurple,fontSize: 17,fontWeight: FontWeight.bold),)),
                        ],
                      ),
                    ),
                  ],
                )),
            ///////////////////////////////////////////////////////////////////////////////////
            /////////////////////////////////ANTRENMAN SCROLL BARLARI/////////////////////////
            //////////////////////////////////////////////////////////////////////////////////
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                'ANTRENMAN',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                height: MediaQuery.of(context).size.height /3.4,
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/spor1',arguments: user);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 140.0,
                            height:  MediaQuery.of(context).size.height /4.3,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/mainSpor1.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text("BACAK",style: TextStyle(color:Colors.deepPurple,fontSize: 17,fontWeight: FontWeight.bold),)),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/spor2',arguments: user);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 140.0,
                            height:  MediaQuery.of(context).size.height /4.3,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/mainSpor3.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text("KOL",style: TextStyle(color:Colors.deepPurple,fontSize: 17,fontWeight: FontWeight.bold),)),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/spor3',arguments: user);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 140.0,
                            height:  MediaQuery.of(context).size.height /4.3,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/mainSpor4.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text("KARIN-SIRT",style: TextStyle(color:Colors.deepPurple,fontSize: 17,fontWeight: FontWeight.bold),)),
                        ],
                      ),
                    ),

                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/spor4',arguments: user);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 140.0,
                            height:  MediaQuery.of(context).size.height /4.3,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/mainSpor2.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                              child: Text("BEL",style: TextStyle(color:Colors.deepPurple,fontSize: 17,fontWeight: FontWeight.bold),)),
                        ],
                      ),
                    ),
                  ],
                )),

            ///////////////////////////////////
            Container(
              height: MediaQuery.of(context).size.height/12,
              width: MediaQuery.of(context).size.width/3 ,
               padding: EdgeInsets.all(5.0),
            //  margin: EdgeInsets.symmetric(horizontal: 120.0,vertical: 3),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white.withAlpha(650),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.home_filled,
                        color: Colors.black87,
                     //   size: 30,
                      ),
                      tooltip: "Ana Sayfa",
                      onPressed: () {
                        Navigator.pushNamed(context, '/', arguments: user);
                      }),

                  IconButton(
                      icon: Icon(
                        Icons.person,
                        color: Colors.black87,
                      //  size: 30,
                      ),
                      tooltip: "Kullanıcı Bilgileri",
                      onPressed: () {
                        Navigator.pushNamed(context, '/kullanici',arguments: user);
                      })
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
