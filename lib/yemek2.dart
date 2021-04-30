import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Yemek2 extends StatelessWidget {
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
                Image.asset("assets/images/yemek2.jpg", fit: BoxFit.cover),
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
                                "Diyet Çorba",
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
                                    "40 dk",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "300 kcal",
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
                              "200 gram karnabahar (haşlanmış)\n"
                              "1 orta boy domates\n"
                              "1/2 orta boy kuru soğan\n"
                              "15 gram kavrulmuş file badem\n"
                              "15 gram kavrulmuş file fındık\n"
                              "1 dişsarımsak\n"
                              "2 yemek kaşığı sızma zeytinyağı)\n"
                              "1 litre sıcak su\n"
                              "1 çay kaşığı zerdeçal\n"
                              "1 çay kaşığıköri\n"
                              "1 adet çubuk tarçın\n"
                              "1/2 çay kaşığıtuz\n"
                              "1 çay kaşığıpul biber\n",

                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Text("   Fosfor ve vitamin bakımından zengin bir içeriğe sahip karnabahar yanı sıra diğer sebze ve baharatların bir araya geldiği minimum yağ ve içme suyuyla hazırlanan çorba tarifi, düzenli ve sistemli bir beslenme şemasında fazla ödemin vücuttan atılmasına, incelmenize yardımcı oluyor.İçme suyu yerine sebze suyu kullanmayı da tercih edebilirsiniz.\n "
                          "  Kuru soğan ve sarımsağı küçük parçalar halinde yemeklik doğrayın. Kabuğunu soyduğunuz domatesi, küçük küpler şeklinde kesin.Zeytinyağını bir tencerede kızdırdıktan sonra soğan ve sarımsakları 1-2 dakika kadar soteleyin.Ardından küçük küpler halinde kesilmiş domatesleri ekleyin ve 1-2 dakika daha soteleyin.Yumuşayan domateslere 250 ml. sıcak su ve 200 gram haşlanmış karnabaharı katın.2-3 dakika kaynayan çorba karışımına zerdeçal, köri, tuz, pul biber ve kalan 750 ml. sıcak suyu ilave edin.Pişmekte olan çorba karışımına çubuk tarçını ekleyip aromasını vermesi adına 1-2 dakika beklettikten sonra çıkartın.Aralıklarla karıştırmaya devam ettiğiniz çorbayı, 9-10 dakika daha pişirin.Ocaktan aldığınız çorbayı derin bir kaseye aktarın. Kavrulmuş file fındık ve bademleri kattıktan sonra mutfak robotu ya da blenderdan geçirdiğiniz çorbayı sıcak ya da ılık olarak sevdiklerinizle paylaşın.",
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
