import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Yemek6 extends StatelessWidget {
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
                Image.asset("assets/images/yemek6.jpg", fit: BoxFit.cover),
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
                                "Izgara Sebze",
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
                                "200 kcal",
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
                              "2 orta boy patlıcan\n"
                              "2 orta boy kabak\n"
                              "2 orta boy kırmızı biber\n"
                              "10 kiraz domates\n"
                              "SOSU İÇİN\n\n"
                              "1 büyük demet taze fesleğen\n"
                              "50 gram çam fıstığı\n"
                              "75 gram parmesan peyniri\n"
                              "2 diş sarımsak\n"
                              "1 su bardağızeytinyağı\n"
                              "1/4 çay kaşığıtuz",

                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Text("   Uç kısımlarını aldığınız kabak ve patlıcanları, kabuklarını soymadan iri parçalar halinde kesin.Ortadan ikiye kesip çekirdeklerini çıkardığınız etli kırmızı biberleri iri parçalar halinde kesin. Kiraz domateslerin sap kısımlarını çıkartın.Doğranmış sebzeleri ve bütün kiraz domatesleri sırasıyla tahta şişlere geçirin.Üzerlerine bir yumurta fırçası yardımıyla zeytinyağı sürdükten sonra yağlı kağıt üzerinde fırında ya da ızgarada renk alana kadar pişirin.Pesto sosu hazırlamak için; yaprak yaprak ayıklayıp, bol suda yıkadığınız fesleğenleri kuruladıktan sonra incecik kıyın.Çıtırlık kazanması ve aromasının daha yoğun hissedilmesi için çam fıstıklarını yağsız tavada 2-3 dakika kadar kavurun.Parmesan peynirini rendenin ince tarafıyla rendeleyin. Sarımsakları ayıkladıktan sonra tuz ilavesi ile bir havanda dövün.Ezilmiş sarımsakları, kavrulmuş çam fıstıkları ve kıyılmış fesleğen yaprakları ile mutfak robotunda püre haline getirin.Rendelenmiş parmesan peyniri ve zeytinyağını azar azar ekleyip karıştırma işlemini sürdürün.Izgara sebzeleri servis tabağına aldıktan sonra üzerlerine kıvam alan pesto sosu ve nar ekşisini gezdirin. Bekletmeden ılık olarak sevdiklerinizle paylaşın.\n  Afiyet Olsun.",
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
