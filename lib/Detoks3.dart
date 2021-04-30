import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Detoks3 extends StatelessWidget {
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
                child: Image.asset("assets/images/detoks3.jpg",
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
                                "Ananaslı Detoks",
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
                                    "20 dk",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "700 kcal",
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
                              "1 Ananas\n"
                              "1 Dilim Elma\n"
                              "1 Salatalık\n"
                              "1/2 Litre Su\n",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      Text(
                          "Tüm malzemeler dilimlendikten sonra yarım litre suyun içerisinde bekletilir. Daha sonra rahatlıkla tüketebilirsiniz. Metabolizmayı hızlandırırken aynı zamanda karın şişmesini azaltmaya yardımcı olacak bir içecek arıyorsanız, bu lezzetli tropikal detoks suyu tarifi ihtiyacınızı ciddi anlamda karşılayacaktır. Salatalık karında yaşanan şişkinliği azaltır. Bu suda yer alan tüm Bunlar antioksidanlar ve potasyumla doludur. Bu da yorucu bir antrenman sırasında ve sonrasında yudumlamak için mükemmel bir içecek ürettiniz demektir.  Ananas doğal olarak metabolizma hızınızı artırır ve içerdiği C vitamini sayesinde sizin birçok rahatsızlıktan da korunmanıza yardımcı olur. Salatalık gibi, ananaslar da antioksidanlarla doludur. Bunun yanı sıra çok da lezzetlidir.",
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
