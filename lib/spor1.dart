import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class Spor1 extends StatefulWidget {

  @override
  _Spor1State createState() => _Spor1State();
}

class _Spor1State extends State<Spor1> {

  Color color1=Colors.white.withAlpha(600);
  Color color2=Colors.white.withAlpha(600);
  Color color3=Colors.white.withAlpha(600);
  Color color4=Colors.white.withAlpha(600);
  Color color5=Colors.white.withAlpha(600);
  Color color6=Colors.white.withAlpha(600);
  Color color7=Colors.white.withAlpha(600);
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
                Image.asset("assets/images/spor1.jpg", fit: BoxFit.cover),
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

                               child: Image.asset("assets/images/bacak1.png", fit: BoxFit.scaleDown),

                               height: 50, width: 75,
                               decoration: BoxDecoration(

                                 borderRadius: BorderRadius.all(Radius.circular(10)),
                                 color: Colors.blueGrey[100],
                               ),
                             ),

                             Text("Kardiyo",style: TextStyle(fontSize: 20,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             Container(

                            child: Image.asset("assets/images/bacak2.png", fit: BoxFit.scaleDown),
                               height: 50, width: 75,

                               decoration: BoxDecoration(
                               borderRadius: BorderRadius.all(Radius.circular(10)),
                                 color: Colors.blueGrey[100],
                             ),
                             ),

                              Text("Ağırlık Kaldırma",style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.w600,color:Colors.black54,
                                ),),

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

                                child: Image.asset("assets/images/bacak3.png", fit: BoxFit.scaleDown),
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

                                child: Image.asset("assets/images/bacak4.png", fit: BoxFit.scaleDown),
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

                      TextButton(
                        onPressed: (){
                          setState(() {
                            if(color5==Colors.white.withAlpha(600))
                              color5=Colors.green.withAlpha(400);
                            else
                              color5=Colors.white.withAlpha(600);
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          decoration: BoxDecoration(
                              color: color5,
                              borderRadius: BorderRadius.circular(15)

                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(

                                child: Image.asset("assets/images/bacak5.png", fit: BoxFit.scaleDown),
                                height: 50, width: 75,

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blueGrey[100],
                                ),
                              ),

                              Text("Bacak Açma",style: TextStyle(fontSize: 20,
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
                            if(color6==Colors.white.withAlpha(600))
                              color6=Colors.green.withAlpha(400);
                            else
                              color6=Colors.white.withAlpha(600);
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          decoration: BoxDecoration(
                              color: color6,
                              borderRadius: BorderRadius.circular(15)

                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(

                                child: Image.asset("assets/images/bacak6.png", fit: BoxFit.scaleDown),
                                height: 50, width: 75,

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blueGrey[100],
                                ),
                              ),

                              Text("Bisiklet",style: TextStyle(fontSize: 20,
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
                            if(color7==Colors.white.withAlpha(600))
                              color7=Colors.green.withAlpha(400);
                            else
                              color7=Colors.white.withAlpha(600);
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          decoration: BoxDecoration(
                              color: color7,
                            borderRadius: BorderRadius.circular(15)

                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(

                                child: Image.asset("assets/images/bacak7.png", fit: BoxFit.scaleDown),
                                height: 50, width: 75,

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.blueGrey[100],
                                ),
                              ),

                              Text("Diz Ağırlık",style: TextStyle(fontSize: 20,
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
