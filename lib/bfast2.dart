import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Bfast2 extends StatelessWidget {
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
                Image.asset("assets/images/bfast2.jpg", fit: BoxFit.cover),
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
                                "KAHVALTI",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              Text(
                                "Tahılsız Muffin",
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
                                "276 kcal",
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
                              "4 yumurtaf\n"
                              "1/4 su bardağıhindistan cevizi yağı\n"
                              "1/4 su bardağı bal\n"
                              "1/4 su bardağıtam yağlı süt\n"
                              "1/2 su bardağı hindistan cevizi unu\n"
                              "1/2 su bardağı çiğ fındık\n"
                              "1 adet muz\n"
                              "1/4 çay kaşığıtarçın\n"
                              "1 çay kaşığı vanilya özütü\n",

                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Text("   Not:Badem unu hazırlamak için; bademleri, blender’da toz haline getirip un formuna sokabilirsiniz. Aynı şekilde Hindistan cevizini de bu yöntemle çekip 10 dakika içerisinde tahıl düşmanı bir un elde edebilirsiniz\n"
                          "   Fırını önceden 180 derecede ısıtın.Bal ve Hindistan cevizi yağını ocakta, kısık ateşte ısıtın, homojen bir karışım elde edene kadar karıştırın. Soğumaya bırakın.Karıştırma kabına aldığınız yumurtaları çırpın. Çatalla ezdiğiniz muzu ekleyin. Ballı yağ karışımı, süt ve vanilya özütünü ilave edin.Hindistan cevizi ununu ekleyip iyice karıştırın. Fındıkları çekip içerisine ekleyin. Elde ettiğiniz harcı, yağlı kağıt yerleştirdiğiniz muffin kalıplarına paylaştırın. Önceden ısıtılmış fırında üzerleri kızarana kadar yaklaşık 20-25 dakika pişirin. Kalıplarından çıkartıp ılık olarak servis edin.",
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
