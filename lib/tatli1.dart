import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Tatli1 extends StatelessWidget {
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
                Image.asset("assets/images/tatlı1.jpg", fit: BoxFit.cover),
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
                                "SORBE",
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
                                    "60 dk",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "139 kcal",
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
                              "1/2 Karpuz\n"
                              "10 adet Kiraz"
                              "1/2 Bardak Şeker\n"
                              "1/2 Bardak Su\n"
                              "1/2 Limon\n"
                              "5 Ceviz\n"
                              "25 gr fındık\n",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Text(
                          "Karpuzu dilimleyip çekirdeklerini çıkarın. Bir kaba koyarak dolaba atın. Ertesi gün tam da istediğimiz gibi donmuş karpuz elde edeceksiniz.Peki neden donduruyoruz? Dondurduğumuzda meyvenin özütünü daha iyi alırız ve sorbemiz sulanmaz.Bir tencereye kirazları, şekeri ve suyu koyun iyice şekeri eritin. Kaynatmanıza gerek yok. Sonra bu karışımı süzgeçten geçirin ve parçalayıcınıza donmuş karpuzlarla birlikte koyun. Yarım limonun suyunu sıkın. Eğer parçacıklı istiyorsanız parçalayıcınızı az çalıştırın. Pürüzsüz istiyorsanız çok çalıştırın hatta sonrasında süzgeçten de geçirebilirsiniz.Yayvan bir kaba karışımı dökün ve birer saat arayla 3 kere arada mikserle karışımı karıştırıp havalandırın.12 saat sonra afiyetle yiyebilirsiniz.",
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
