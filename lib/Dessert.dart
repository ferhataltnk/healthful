import 'package:flutter/material.dart';
import 'package:healthful/userInfo.dart';

class Dessert extends StatelessWidget {
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
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        )),
                SizedBox(
                  width: 10.0,
                ),
                Text("Tatlılar",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
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
                          Navigator.pushNamed(context,"/tatlı1");
                        },
                        child:_yiyecekOlusturucu('assets/images/tatlı1.jpg', 'Sorbe', '139 kcal')
                    ),



                    TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context,"/tatlı2");
                        },
                        child: _yiyecekOlusturucu('assets/images/tatlı2.jpg', 'Granola', '130 kcal')),

                    TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context,"/tatlı3");
                        },
                        child: _yiyecekOlusturucu('assets/images/tatlı3.jpg','Protein Bar', '414,4 kcal')),




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
        thickness: 1,
        color: Colors.grey[200],
        indent: 30,
        endIndent: 30,
      ),
    ],
  );
}

