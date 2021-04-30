import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Tatli2 extends StatelessWidget {
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
                Image.asset("assets/images/tatlı2.jpg", fit: BoxFit.cover),
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
                                "TATLI",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              Text(
                                "GRANOLA",
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
                                "130 kcal",
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
                              "2 Su Bardağı Yulaf Ezmesi\n"
                              "1 çay bardağı ceviz içi\n"
                              "3 yemek kaşığı kaju\n"
                              "1 çay bardağı çiğ badem\n"
                              "1 çay bardağı fındık\n"
                              "4-5 yemek kaşığıvişne kurusu\n"
                              "1 çay bardağı kuru üzüm (çekirdeksiz)\n",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Text(
                          "     Not:Kullanacağınız kuru yemişlerin çiğ olmasına özen gösterin.\n"
                          "     Ceviz içi, fındık, badem ve kaju fıstığını bir buzdolabı poşetinin içine alın.Bir bardak ya da tokmak yardımıyla iri parçalar haline gelinceye kadar kırın.İri parçaladığınız kuru yemişleri bir kabın içine alın.Üzerine yulaf, bal, pekmez ve tarçını ekleyerek güzelce karıştırın.Yağlı kağıt serili fırın tepsisinin üzerine ince bir tabaka halinde yayın.180 derecede önceden ısıtılmış fırında 10 dakika kadar pişmeye bırakın.10 dakikanın sonunda çıkarıp spatula ya da tahta kaşık yardımıyla güzelce karıştırın.Aynı işlemi bir kez daha tekrarlayın ve 5 dakika daha pişirin.Çıkarıp karıştırarak oda sıcaklığında dinlendirin.Dinlendikten sonra içine kuru üzüm ve vişne kurusunu ilave edin. Granolanız soğudukça katılaşacaktır. Bu nedenle elinizle mutlaka parçalar haline gelecek şekilde kırın.Bir kavanozun içinde saklayabileceğiniz, sabah kahvaltılarında afiyetle tüketebileceğiniz granolanız hazır. Afiyet olsun.",
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
