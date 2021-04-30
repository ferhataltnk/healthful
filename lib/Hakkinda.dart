import 'package:flutter/material.dart';
import 'package:healthful/main.dart';
import 'package:healthful/userInfo.dart';

class Hakkinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserInfo user = ModalRoute.of(context).settings.arguments;
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child:Text(
                'Spor bölümünde kullanılan vektörel çizimler "https://www.freepik.com/grmarc" adresinden alınmıştır. \n\n Ana sayfadaki spor kategorisi fotoğrafları "https://unsplash.com/photos/Apejl7P4-vk?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink" adresinden alınmıştır. \n\n Anasayfadaki yiyecek ve içecek kategorisi fotoğrafları; \n https://unsplash.com/photos/9Gz5bMWdGYE?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink \n https://unsplash.com/photos/3TwtvW1vDCw?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink \n https://unsplash.com/photos/3Tk0EfrcuOs?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink \n https://unsplash.com/photos/W-p5xm_hGSw?utm_source=unsplash&utm_medium=referral&utm_content=creditShareLink \n adreslerinden alınmıştır.' ,style: TextStyle(fontSize: 18),
              ),


            ),
            SizedBox(height: 150,),



















          ],
        ),
      ),

      bottomSheet: Container(
        padding: EdgeInsets.all(10),
        color: Colors.yellow[100],
        child:Text("  Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193301028 numaralı Öğrenci Öğrenci tarafından 30 Nisan 2021 tarihinde yapılmıştır.",
          style: TextStyle(
            fontSize: 15,
            fontFamily: "Regular",
          ),),
      ),
    );
  }
}
