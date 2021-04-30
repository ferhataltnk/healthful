import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Spor3 extends StatefulWidget {
  @override
  _Spor3State createState() => _Spor3State();
}

class _Spor3State extends State<Spor3> {
  Color color1=Colors.white.withAlpha(600);
  Color color2=Colors.white.withAlpha(600);
  Color color3=Colors.white.withAlpha(600);
  Color color4=Colors.white.withAlpha(600);

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
                child: Image.asset("assets/images/mainSpor4.jpg",
                    fit: BoxFit.cover),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          setState(() {
                            if (color1 == Colors.white.withAlpha(600))
                              color1 = Colors.green.withAlpha(400);
                            else
                              color1 = Colors.white.withAlpha(600);
                          });
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                              color: color1,
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Image.asset("assets/images/karın1.png",
                                    fit: BoxFit.scaleDown),
                                height: 50,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blueGrey[100],
                                ),
                              ),
                              Text(
                                "Mekik",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54,
                                ),
                              ),
                              Text(
                                "5x3",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      TextButton(
                        onPressed: (){
                          setState(() {
                            if(color2==Colors.white.withAlpha(600))
                              color2=Colors.green.withAlpha(400);
                            else
                              color2=Colors.white.withAlpha(600);
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          decoration: BoxDecoration(
                              color: color2,
                              borderRadius: BorderRadius.circular(15)

                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                            children: [
                              Container(
                                child: Image.asset("assets/images/karın2.png", fit: BoxFit.scaleDown),
                                height: 50, width: 75,

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blueGrey[100],
                                ),
                              ),

                              Text("İp Atlama",style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.w600,color:Colors.black54,),),

                              Text("5x3",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,
                                color: Colors.blueGrey,),),
                            ],
                          ),
                        ),
                      ),

                      TextButton(
                        onPressed: (){
                          setState(() {
                            if(color3==Colors.white.withAlpha(600))
                              color3=Colors.green.withAlpha(400);
                            else
                              color3=Colors.white.withAlpha(600);
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          decoration: BoxDecoration(
                              color: color3,
                              borderRadius: BorderRadius.circular(15)

                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(

                                child: Image.asset("assets/images/sırt1.png", fit: BoxFit.scaleDown),
                                height: 50, width: 75,

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blueGrey[100],
                                ),
                              ),

                              Text("Öne Germe",style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.w600,color:Colors.black54,),),

                              Text("15 dk",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,
                                color: Colors.blueGrey,),),
                            ],
                          ),
                        ),
                      ),

                      TextButton(
                        onPressed: (){
                          setState(() {
                            if(color4==Colors.white.withAlpha(600))
                              color4=Colors.green.withAlpha(400);
                            else
                              color4=Colors.white.withAlpha(600);
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          decoration: BoxDecoration(
                              color: color4,
                              borderRadius: BorderRadius.circular(15)

                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(

                                child: Image.asset("assets/images/sırt2.png", fit: BoxFit.scaleDown),
                                height: 50, width: 75,

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blueGrey[100],
                                ),
                              ),

                              Text("Arkaya Germe",style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.w600,color:Colors.black54,),),

                              Text("15 dk",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,
                                color: Colors.blueGrey,),),
                            ],
                          ),
                        ),
                      ),
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
