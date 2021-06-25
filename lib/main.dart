import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthful/Pages/Kullanici.dart';
import 'package:healthful/Pages/araMenuSablon.dart';
import 'package:healthful/Lists/tarifList.dart';
import 'package:healthful/Widgets/on_board.dart';
import 'package:healthful/Pages/email_sign_in.dart';
import 'package:healthful/userInfo.dart';
import 'package:healthful/Pages/sporSayfaSablon.dart';
import 'package:healthful/Pages/Hakkinda.dart';
import 'package:healthful/Pages/tarifSayfaSablon.dart';
import 'package:healthful/Lists/sporList.dart';

////////////////////////////////////////////////////////////////
import 'package:provider/provider.dart';
import 'package:healthful/KullaniciIslem/Auth.dart';
import 'package:healthful/Pages/sign_in_page.dart';
import 'package:healthful/Pages/graphics.dart';

import 'KullaniciIslem/worldTime.dart';
import 'package:page_transition/page_transition.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(healthful());
}

class healthful extends StatefulWidget {
  @override
  _healthfulState createState() => _healthfulState();
}

class _healthfulState extends State<healthful> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();


  @override
  Widget build(BuildContext context) {
    return Provider<Auth>(
      create: (context) => Auth(),
      /*Yayın yapabilmesi için önce o sınıfın bi objesine kendinin sahip olması gerekir.*/
      child: MaterialApp(


          theme: ThemeData(fontFamily: 'ArchitectsDaughter'),
          debugShowCheckedModeBanner: false,
          initialRoute: '/onBoard',
          routes: {
            '/': (context) => MainPage(),
            '/kullanici': (context) => Kullanici(),
            '/dessert': (context) => AraMenuSablon(),
            '/emailSignPage': (context) => EmailSignInPage(),
            '/spor1': (context) => SporSayfaSablon(),
            '/hakkinda': (context) => Hakkinda(),
            '/tarifSayfasi': (context) => TarifSayfaSablon(),
            '/onBoard': (context) => OnBoardWidget(),
            '/signInPage': (context) => SignInPage(),
            '/graphics': (context) => PieChartSample2(),

          }),
    );
  }
}
///////////////////////////////////////////////////////////////////////////////
//////////////////        ANA SAYFA           /////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  Auth userCredential = Auth();
  WorldTime gun = WorldTime();
  int gun2;
  void initState() {
    // TODO: implement initState
    super.initState();
    gun.getTime().then(
            (val){
          setState(() {
           gun2=val;
          });
        }
    );
  }
  List<String> gunler=["Pazar","Pazartesi","Salı","Çarşamba","Perşembe","Cuma","Cumartesi"];

  @override


  @override
  Widget build(BuildContext context) {
    SporList sporListem = SporList();
    TarifList tarifListem = TarifList();

    UserInfo user = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blueGrey[100],
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white.withAlpha(700),
                borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(30.0),
                    bottomEnd: Radius.circular(30.0)),
              ),
              child: SafeArea(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height / 25,
                      horizontal: MediaQuery.of(context).size.width / 25),
                  child: Column(
                    children: <Widget>[
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Merhaba\n ${userCredential.getCurrentUser("isim")}",
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                           CircleAvatar(
                             radius: 32,
                            child: Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(userCredential.getCurrentUser('photo')),
                                ),
                              ),
                            ),

                          ),

                      ],
                    ),
                    Row(
                     children:<Widget>[
                      Text("${gun2!= null? gunler[gun2] :" "}",style: TextStyle(fontSize:15),),
                     ],

                    )],
                  ),


                ),
              ),
            ),

            //////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////YATAY SCROLL BARLAR////////////////////////////////////////////////
            //////////////////////////////////////////////////////////////////////////////////////////
            Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'YİYECEK İÇECEK',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height / 4.5 + 50,
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    TextButton(

                      onPressed: () {
                        Navigator.pushNamed(context, '/dessert',
                            arguments: tarifListem.breakfastList);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 140.0,
                            height: MediaQuery.of(context).size.height / 4.5,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/mainBfast.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "KAHVALTI",
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/dessert',
                            arguments: tarifListem.beverageList);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 140.0,
                            height: MediaQuery.of(context).size.height / 4.5,
                            //Bütün ölçüleri buna benzer şekilde vereceğim
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/mainJuice.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "İÇECEK",
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/dessert',
                            arguments: tarifListem.dinnerList);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 140.0,
                            height: MediaQuery.of(context).size.height / 4.5,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/mainDinner.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "AKŞAM",
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/dessert',
                            arguments: tarifListem.dessertList);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 140.0,
                            height: MediaQuery.of(context).size.height / 4.5,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/mainDessert.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "TATLI",
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              )),
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
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height / 3.4,
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/spor1',
                            arguments: sporListem.bacakSpor);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 140.0,
                            height: MediaQuery.of(context).size.height / 4.3,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/mainSpor1.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "BACAK",
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/spor1',
                            arguments: sporListem.kolSpor);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 140.0,
                            height: MediaQuery.of(context).size.height / 4.3,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/mainSpor3.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "KOL",
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/spor1',
                            arguments: sporListem.karinSpor);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 140.0,
                            height: MediaQuery.of(context).size.height / 4.3,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/mainSpor4.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "KARIN-SIRT",
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/spor1',
                            arguments: sporListem.belSpor);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 140.0,
                            height: MediaQuery.of(context).size.height / 4.3,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/mainSpor2.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "BEL",
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height / 15,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.home_filled,
                  color: Colors.black87,
                  size: 30,
                ),
                tooltip: "Ana Sayfa",
                onPressed: () {

                  Navigator.pushNamed(context, '/', arguments: user);
                }),
            IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.black87,
                  size: 30,
                ),
                tooltip: "Kullanıcı Bilgileri",
                onPressed: () {Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Kullanici()));
                })
          ],
        ),
      ),
    );
  }
}
