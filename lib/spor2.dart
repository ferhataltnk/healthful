import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Spor2 extends StatefulWidget {
  @override
  _Spor2State createState() => _Spor2State();
}

class _Spor2State extends State<Spor2> {

  Color color1=Colors.white.withAlpha(600);
  Color color2=Colors.white.withAlpha(600);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.grey[200],

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
                Image.asset("assets/images/mainSpor1.jpg", fit: BoxFit.cover),
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
                        onPressed: (){
                          setState(() {
                            if(color1==Colors.white.withAlpha(600))
                              color1=Colors.green.withAlpha(400);
                            else
                              color1=Colors.white.withAlpha(600);
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),

                          decoration: BoxDecoration(
                              color: color1,
                              borderRadius: BorderRadius.circular(15)

                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Image.asset("assets/images/kol1.png", fit: BoxFit.scaleDown),
                                height: 50, width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blueGrey[100],
                                ),
                              ),

                              Text("Ön Kol",style: TextStyle(fontSize: 20,
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
                                child: Image.asset("assets/images/kol2.png", fit: BoxFit.scaleDown),
                                height: 50, width: 75,

                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blueGrey[100],
                                ),
                              ),

                              Text("Arka Kol",style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.w600,color:Colors.black54,),),

                              Text("5x3",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,
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
