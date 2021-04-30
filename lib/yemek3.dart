import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Yemek3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            snap: true,
            floating: true,
            backgroundColor: Colors.transparent,
            expandedHeight: 180,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(40))),
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(
                borderRadius:
                BorderRadius.vertical(bottom: Radius.circular(40)),
                child:
                Image.asset("assets/images/yemek3.jpg", fit: BoxFit.cover),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "AKŞAM YEMEĞİ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              Text(
                                "Kinoa Salatası",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 25,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  Icon(
                                    Icons.timer,
                                    color: Colors.blueGrey,
                                  ),
                                  Text(
                                    "30 dk",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "250 kcal",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 14,
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(30),
                        // alignment: Alignment.centerLeft,
                        child: Text(
                          "MALZEMELER\n\n"
                              "130 gram kinoa\n"
                              "1 demet maydanoz\n"
                              "1 adet domates\n"
                              "1 adet salatalık\n\n"
                              "SOSU İÇİN\n\n"
                              "3 yemek kaşığı zeytinyağı\n"
                              "1 tatlı kaşığı nar ekşisi\n"
                              "1/2 çay kaşığı tuz\n",

                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Text("  Kinoayı haşlayacağınız su, 1 ölçüye 1,5 ölçü ağırlığında olmalıdır. 130 gram kinoa için 195-200 ml. su kullanabilirsiniz.\n"
                          "  Kinoayı bol suda yıkayın, fazla suyunu süzdürün.Ölçülü su ve tuzu orta boy bir tencereye alın. Tencereye aldığınız kinoayı, bir taşım kaynattıktan sonra altını kısıp tencerenin kapağını kapatın ve suyunu çekene kadar pişmeye bırakın. 5-10 dakika kadar demlendirin.Doğranmış maydanoz, domates ve salatalığı bir kasede karıştırın. Demleyip dinlendirdiğiniz kinoayı bu karışıma ekleyin.Sos karışımı için gerekli tüm malzemeleri karıştırın.Zeytinyağlı sos karışımını hazırladığınız kinoalı karışıma katıp iyice karıştırın.Bekletmeden servis edin. Afiyetler olsun!",
                          style: TextStyle(
                            fontSize: 17,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
