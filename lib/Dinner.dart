import 'package:flutter/material.dart';
import 'package:healthful/userInfo.dart';

class Dinner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserInfo user = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 40.0, left: 20.0),
            child: IconButton(
              alignment: Alignment.centerLeft,
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, '/',arguments: user);
              },
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: <Widget>[
                Text("Sağlıklı",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        )),
                SizedBox(
                  width: 10.0,
                ),
                Text("Yemekler",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        )),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 120.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 3.0, bottom: 10.0),
              child: Container(
                height: MediaQuery.of(context).size.height - 150.0,
                child: ListView(
                  children: <Widget>[
                    TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context,"/yemek1");
                        },
                        child:_yiyecekOlusturucu('assets/images/yemek1.jpg', 'Avokado Salatası', '250 kcal')
                    ),

                    TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context,"/yemek2");
                        },
                        child: _yiyecekOlusturucu('assets/images/yemek2.jpg', 'Diyet Çorbası', '300 kcal')),

                    TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context,"/yemek3");
                        },
                        child: _yiyecekOlusturucu('assets/images/yemek3.jpg', 'Kinoa Salatası', '250 kcal')),


                    TextButton(onPressed: (){
                      Navigator.pushNamed(context,"/yemek4");
                    },
                        child: _yiyecekOlusturucu('assets/images/yemek4.jpg', 'Ton Balıklı Salata', '30 dk')),

                    TextButton(onPressed: (){
                      Navigator.pushNamed(context,"/yemek5");
                    },
                        child: _yiyecekOlusturucu('assets/images/yemek5.jpg', 'Diyet Kek', '650 kcal')),

                    TextButton(onPressed: (){
                      Navigator.pushNamed(context,"/yemek6");
                    },
                        child: _yiyecekOlusturucu('assets/images/yemek6.jpg', 'Izgara Sebze', '200 kcal')),


                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




Widget _yiyecekOlusturucu(
    String imgAdres, String yiyecekIsmi, String hazirlikSure) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.all(3.0),
        child: Container(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:30,right: 30,bottom:10),
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(imgAdres),
                ),
              ),
              Column(
                children: <Widget>[
                  Text(yiyecekIsmi,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      )),
                  SizedBox(width: 10.0),
                  Text(hazirlikSure,
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
      Divider(
        height: 1,
        thickness: 2,
        color: Colors.grey[200],
        indent: 30,
        endIndent: 30,
      ),
    ],
  );
}

