import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Yemek5 extends StatelessWidget {
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
                Image.asset("assets/images/yemek5.jpg", fit: BoxFit.cover),
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
                                "Diyet Kek",
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
                                    "55 dk",
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
                              "3 adetyumurta\n"
                              "2 adet büyük boy muz (olgun ya da çok olgun)\n"
                              "1,5 çay bardağı bal\n"
                              "1 su bardağı süt\n"
                              "2 yemek kaşığı yoğurt\n"
                              "1,5 çay bardağı zeytinyağı\n"
                              "1/2 çay bardağı ince çekilmiş ceviz içi\n"
                              "1 çay kaşığı tarçın\n"
                              "1 paketkabartma tozu\n"
                              "3 - 3,5 su bardağıtam buğday unu",

                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Text("   Bu kekin püf noktası unu güzelce eleyerek ilave etmekte ve unu kıvam alana kadar kontrollü bir şekilde ilave etmekte saklı. Tam buğday unu kullanıldığı için kıvamı da çabuk toparlanacaktır. Dilerseniz bu keke kakao ilave edebilirsiniz. Vanilya özütü, yoksa vanilin de ekleyebilirsiniz. Muzlarınızın olgunlaşmış olmasına ama çürümeye yakın olgun olmamalarına da dikkat edin. Pişirme süresi fırınınızın performansına göre değişkenlik gösterebilir. İçinden cevizi çıkarıp, fındık, badem gibi farklı yemişler de kullanabilirsiniz. Muzlarınız küçükse 4 küçük adet, orta boysa 3 adet kullanın. Dilerseniz yoğurt kullanmadan süt miktarını biraz arttırarak da tarifi deneyebilirsiniz. Sütünüzü diyet süt olarak da tercih edebilirsiniz.\n\n"
                          "   Yumurtaları bir kabın içerisine alın. Üzerine bal ilave ederek güzelce çırpınBalla yumurta güzelce çırpıldıktan sonra içerisine süt, zeytinyağı ve yoğurdu ilave ederek çırpma işlemine devam edin.Ayrı bir yerde muzları ezin. Ayrı bir kapta ezdiğiniz muzları sıvı malzemelerin üzerine ekleyin ve karıştırın.Ardından ceviz için, kabartma tozunu, tarçını ilave edin. Unu da azar azar ilave etmeye başlayın.Spatula yardımıyla kekinizin tüm malzemelerini içerisinde topak kalmayacak şekilde karıştırın. Kekinizin kıvamı çok koyu bir kıvamda olmamalı. Klasik kek kıvamında hafif akışkan bir kek elde edin.Kekinizin harcını yağlanmış unlanmış baton bir kek kalıbına ya da içerisine pişirme kağıdı konmuş yuvarlak bir kek kalıbına aktarın. Dilerseniz üzerine muz dilimleri de dizebilirsiniz.180 derecede önceden ısıtılmış fırında yaklaşık 30-40 dakika arası pişirin. Çıkarıp oda sıcaklığında en az 40 dakika dinlendirin. Dinlenen kekinizi dilimleyerek servis edin. Afiyetler olsun.",
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
