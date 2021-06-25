import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthful/KullaniciIslem/Auth.dart';
import 'package:healthful/Pages/graphics.dart';
import 'package:healthful/userInfo.dart';
import 'package:provider/provider.dart';
import 'package:page_transition/page_transition.dart';

import '../main.dart';
import 'Hakkinda.dart';

class Kullanici extends StatefulWidget {
  @override
  _KullaniciState createState() => _KullaniciState();
}

class _KullaniciState extends State<Kullanici> {

  Auth userCredential = Auth();


  @override
  Widget build(BuildContext context) {
    UserInfo user = ModalRoute.of(context).settings.arguments;
    return Scaffold(

      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  padding: EdgeInsets.all(20),
                  icon:Icon(Icons.arrow_back),
                  iconSize: 35,
                  onPressed: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(seconds: 1), child: MainPage()));
                  },
                ),
                IconButton(
                  padding: EdgeInsets.only(left:150),
                  icon:Icon(Icons.bar_chart_outlined),
                  tooltip: "Grafikler",
                  iconSize: 35,
                  onPressed: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(seconds: 1), child: PieChartSample2()));
                  },
                ),
                IconButton(
                  padding: EdgeInsets.all(10),
                  icon:Icon(Icons.info_outline),
                    tooltip: "Uygulama Hakkında",
                    iconSize: 35,
                    onPressed: (){
                      Navigator.push(context, PageTransition(type: PageTransitionType.fade, duration: Duration(seconds: 1), child: Hakkinda()));
                      },
                ),

              ],
            ),


            CircleAvatar(
              radius:75,
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


            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(20),
              child: Text(
                "Kullanıcı: ${userCredential.getCurrentUser("isim")}  \nemail : ${userCredential.getCurrentUser("email")}  ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,

                ),
              ),
            ),

            Container(
              width: 150,
              decoration: BoxDecoration(
                color: Colors.red.withAlpha(400),
                borderRadius: BorderRadius.circular(10),

              ),

              child: IconButton(
                icon: Icon(Icons.exit_to_app,color: Colors.white,),
                  onPressed: () async{
                    await Provider.of<Auth>(context, listen: false).signOut();
                     print('logout tıklandı');
                  },
                  ),
            ),

            SizedBox(height: 100,),
          ],
        ),
      ),
    );
  }
}
