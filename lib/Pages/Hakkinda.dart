import 'package:flutter/material.dart';
import 'package:healthful/main.dart';
import 'package:healthful/userInfo.dart';

class Hakkinda extends StatefulWidget {
  @override
  _HakkindaState createState() => _HakkindaState();
}

class _HakkindaState extends State<Hakkinda> {
  double _fontSize = 20;
  final double _baseFontSize = 20;
  double _fontScale = 1;
  double _baseFontScale = 1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: GestureDetector(
        onScaleStart: (ScaleStartDetails scaleStartDetails) {
          _baseFontScale = _fontScale;
        },

        onScaleUpdate: (ScaleUpdateDetails scaleUpdateDetails) {
          // don't update the UI if the scale didn't change
          if (scaleUpdateDetails.scale == 1.0) {
            return;
          }
          setState(() {
            _fontScale = (_baseFontScale * scaleUpdateDetails.scale).clamp(0.5, 5.0);
            _fontSize = _fontScale * _baseFontSize;
          });
        },
        child: SingleChildScrollView(
          child: Stack(
           // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(

                padding: EdgeInsets.all(40),
                child:Text(
                  'Spor bölümünde kullanılan vektörel çizimler "https://www.freepik.com/grmarc" adresinden alınmıştır. \n\n Ana sayfadaki spor kategorisi fotoğrafları "https://unsplash.com/photos/Apejl7P4-vk?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink" adresinden alınmıştır. \n\n Anasayfadaki yiyecek ve içecek kategorisi fotoğrafları; \n https://unsplash.com/photos/9Gz5bMWdGYE?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink \n https://unsplash.com/photos/3TwtvW1vDCw?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink \n https://unsplash.com/photos/3Tk0EfrcuOs?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink \n https://unsplash.com/photos/W-p5xm_hGSw?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink \n adreslerinden alınmıştır.' ,style: TextStyle(fontSize: _fontSize,),
                ),


              ),
              SizedBox(height: 250,),



















            ],
          ),
        ),
      ),

      bottomSheet: Container(
        padding: EdgeInsets.all(10),
        color: Colors.yellow[100],
        child:Text("  Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193301028 numaralı Öğrenci Öğrenci tarafından 25 Haziran 2021 tarihinde yapılmıştır.",
          style: TextStyle(
            fontSize: 15,
            fontFamily: "Regular",
          ),),
      ),
    );
  }
}
