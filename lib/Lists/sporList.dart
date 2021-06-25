import 'package:flutter/material.dart';

class Spor {
  final String sporName, sporImagePath, sporSure,appbarImagePath;

  Spor({this.sporName, this.sporImagePath, this.sporSure,this.appbarImagePath});   //Parametreleri yaparken süslü parantezleri unutma hatayı bulman zor olur.Zaten öyle yaptığında nesne oluşturmana izin vermiyor property: value şeklinde giremiyorsun.

}


class SporList {


  List<Spor> bacakSpor=[
    Spor(appbarImagePath:"assets/images/mainSpor1.jpg" ),     /* Burada geçici bi çözüm buldum.Profesyonel bi çözüm bul!! */
    Spor(sporName:"Kardiyo", sporImagePath:"assets/images/bacak1.png", sporSure:"15 dk"),
    Spor(sporName:"Ayak Kaldırma", sporImagePath:"assets/images/bacak2.png", sporSure:"5 dk"),
    Spor(sporName:"Öne Germe", sporImagePath:"assets/images/bacak3.png", sporSure:"5 dk"),
    Spor(sporName:"Arkaya Germe", sporImagePath:"assets/images/bacak4.png", sporSure:"10 dk"),
    Spor(sporName:"Bacak Açma", sporImagePath:"assets/images/bacak5.png", sporSure:"15 dk"),
    Spor(sporName:"İp Atlama", sporImagePath:"assets/images/karın2.png", sporSure:"10 dk"),
    Spor(sporName:"Bisiklet", sporImagePath:"assets/images/bacak6.png", sporSure:"5 dk"),
    Spor(sporName: "Diz ve Ağırlık", sporImagePath:"assets/images/bacak7.png", sporSure:"5 dk"),
    Spor(sporName:"Sağ Ayak Ucuna Dokun", sporImagePath:"assets/images/bel3.png", sporSure:"3 dk"),
    Spor(sporName:"Sol Ayak Ucuna Dokun", sporImagePath:"assets/images/bel4.png", sporSure:"3 dk"),




  ];

  List<Spor> karinSpor = [
    Spor(appbarImagePath:"assets/images/mainSpor4.jpg" ),
    Spor(sporName:"Mekik", sporImagePath:"assets/images/karın1.png", sporSure:"15 dk"),
    Spor(sporName:"İp Atlama", sporImagePath:"assets/images/karın2.png", sporSure:"10 dk"),
    Spor(sporName:"Öne Germe", sporImagePath:"assets/images/sırt1.png", sporSure:"20 dk"),
    Spor(sporName:"Arkaya Germe", sporImagePath:"assets/images/sırt2.png", sporSure:"20 dk"),
    Spor(sporName:"Sağ Ayak Ucuna Dokun", sporImagePath:"assets/images/bel3.png", sporSure:"3 dk"),
    Spor(sporName:"Sol Ayak Ucuna Dokun", sporImagePath:"assets/images/bel4.png", sporSure:"3 dk"),
  ];

  List<Spor> kolSpor = [
    Spor(appbarImagePath:"assets/images/mainSpor3.jpg" ),
    Spor(sporName:"Ön Kol", sporImagePath:"assets/images/kol1.png", sporSure:"20 dk"),
    Spor(sporName:"Arka Kol", sporImagePath:"assets/images/kol2.png", sporSure:"20 dk"),
  ];

    List<Spor> belSpor = [
      Spor(appbarImagePath:"assets/images/mainSpor2.jpg" ),
      Spor(sporName:"Sol Bel Esnetme", sporImagePath:"assets/images/bel1.png", sporSure:"15 dk"),
      Spor(sporName:"Sağ Bel Esnetme", sporImagePath:"assets/images/bel2.png", sporSure:"15 dk"),
      Spor(sporName:"Sağ Ayak Ucuna Dokun", sporImagePath:"assets/images/bel3.png", sporSure:"3 dk"),
      Spor(sporName:"Sol Ayak Ucuna Dokun", sporImagePath:"assets/images/bel4.png", sporSure:"3 dk"),
      Spor(sporName:"Pilates Topu Sağa", sporImagePath:"assets/images/bel5.png", sporSure:"2 dk"),
      Spor(sporName:"Pilates Topu Sola", sporImagePath:"assets/images/bel6.png", sporSure:"2 dk"),

    ];
}
