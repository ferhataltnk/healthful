import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Yemek4 extends StatelessWidget {
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
                Image.asset("assets/images/yemek4.jpg", fit: BoxFit.cover),
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
                                "Ton Balıklı Salata",
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
                                    "25 dk",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "650 kcal",
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
                              "1 adet yumurta\n"
                              "5-6 adet çilek\n"
                              "1,5 paketton balığı\n"
                              "10 yaprak ıspanak\n"
                              "1 tatlı kaşığı çörek otu\n"
                              "3 yemek kaşığı zeytinyağı\n"
                              "1 çay kaşığıtuz\n"
                              "1/2 adetlimon\n",

                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Text("  Yumurtayı bir minik cezve ya da tencerenin içerisine koyun. Üzerine su ilave ederek kaynamaya bırakın.O sırada avokadonun kabuğunu dikkatli bir şekilde soyup dilimleyin.O sırada avokadonun kabuğunu dikkatli bir şekilde soyup dilimleyin.Çileklerin saplarını çıkarıp dilimleyin. Temizlenmiş ıspanakları da iri iri doğrayın.Bir kaseye ıspanakları koyun. Üzerine limon, zeytinyağı ve tuzu ilave edip karıştırın.Yumurtayı haşaldıktan sonra kabuklarını soyup ortadan ikiye bölün. Ardından tüm malzemeleri ayrı ayrı kaseye aktarıp üzerlerine biraz zeytinyağı ve çörekotu gezdirin.Afiyet olsun!",
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
