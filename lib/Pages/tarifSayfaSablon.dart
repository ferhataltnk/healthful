import 'package:flutter/material.dart';
import 'package:healthful/Lists/tarifList.dart';


class TarifSayfaSablon extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    Tarif tarifListem= ModalRoute.of(context).settings.arguments;


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
                Image.asset(tarifListem.imagePath, fit: BoxFit.cover),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                new GestureDetector(
                 onVerticalDragCancel: (){
                   Navigator.pop(context);
                 },



                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    tarifListem.ogunZamani,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  Text(
                                    tarifListem.tarifAd,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 25,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
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
                                        tarifListem.sure,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 14,
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    tarifListem.kcal,
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
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal:5,vertical: 15),

                          child:Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children:[
                            for (int i=0; i< tarifListem.icindekiler.length;i++)
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(tarifListem.icindekiler[i],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                              ),
                          ]),


                        ),
                        Text(tarifListem.hazirlanis,
                            style: TextStyle(
                              fontSize: 17,
                            )),
                      ],
                    ),
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
