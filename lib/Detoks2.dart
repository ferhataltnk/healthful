import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Detoks2 extends StatelessWidget {
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
                child: Image.asset("assets/images/detoks2.jpg",
                    fit: BoxFit.cover),
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
                                "İÇECEK",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              Text(
                                "Salatalık Detoksu",
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
                                    "10 dk",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "223 kcal",
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
                              "1 Salatalık\n"
                              "1 Limon\n"
                              "1 Greyfurt\n"
                              "1/2 Tabak Yoğurt\n"
                              "1 Taze Nane\n",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Text(
                          "Detoks suyu söz konusu olduğunda salatalıktan söz etmeden geçemeyiz elbette. Salatalık, vitaminler, flavonoidler ve iltihapla savaşan, beyin sağlığınızı koruyan ve hatta nefesini ferahlaştıran diğer sağlıklı bileşikler de dahil olmak üzere birçok faydayı ayağımıza kadar getirmektedir. Üstelik salatalık detoks suyu yapmak da oldukça basit. Yarım litre su içerisine 2 salatalığı dilimleyerek atın ve bir iki saat bekleyin.Dilerseniz soğuk için.Salatalığın eşsiz meyvelerle birleişimden doğacak tada bayılacaksınız.",
                          style:TextStyle(
                            fontSize: 17,
                          )
                      ),],
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
