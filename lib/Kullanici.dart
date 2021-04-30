import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthful/userInfo.dart';

class Kullanici extends StatelessWidget {
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
                    Navigator.pushNamed(context,'/',arguments: user);
                  },
                ),

                IconButton(
                  padding: EdgeInsets.all(20),
                  icon:Icon(Icons.info_outline),
                    tooltip: "Uygulama Hakkında",
                    iconSize: 35,
                    onPressed: (){
                      Navigator.pushNamed(context,'/hakkinda',arguments: user);
                      },
                ),
              ],
            ),


            CircleAvatar(
              radius: 80.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/images/user.png"),
            ),


            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(20),
              child: Text(
                "Kullanıcı: ${user.adU} \nemail : ${user.emailU}",
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
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(context,"/login", (route) => false);
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
