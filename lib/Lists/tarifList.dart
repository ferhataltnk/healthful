import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Tarif {
  final String ogunZamani, tarifAd, imagePath, kcal, sure;
  final String hazirlanis;
  final List icindekiler;

  Tarif({@required this.ogunZamani,
    @required this.tarifAd,
    @required this.imagePath,
    @required this.kcal,
    @required this.sure,
    @required this.hazirlanis,
    @required this.icindekiler});
}

class TarifList {
  List<Tarif> breakfastList = [
    Tarif(
      ogunZamani: "KAHVALTI",
      tarifAd: "Yulaf Lapası",
      imagePath: "assets/images/bfast1.jpg",
      kcal: "49 kcal",
      sure: "5 dk",
      icindekiler: [
        "İÇİNDEKİLER",
        "3-4 yemek kaşığı yulaf",
        "1 su bardağı süt",
        "Muz (Üzeri İçin)",
        "1 çay kaşığı tarçın"
      ],
      hazirlanis:
      "   Süt ve yulafı bir tencereye alıp kısık ateşte karıştırarak pişiriyoruz.Tarçın veya kakao ekleyip karıştırın.Yulaflar sütü çekip koyulaşmaya başlayınca ocaktan alıyoruz.5 dakika ılınması için bekleyin.Muz veya dilediğiniz meyvelerle süsleyip afiyetle yiyin.",
    ),
    Tarif(
      ogunZamani: "KAHVALTI",
      tarifAd: "Tahılsız Muffin",
      imagePath: "assets/images/bfast2.jpg",
      kcal: '276 kcal',
      sure: "30 dk",
      icindekiler: [
        "İÇİNDEKİLER",
        "4 yumurta",
        "1/4 su bardağıhindistan cevizi yağı",
        "1/4 su bardağı bal",
        "1/4 su bardağıtam yağlı süt",
        "1/2 su bardağı hindistan cevizi unu",
        "1/2 su bardağı çiğ fındık",
        "1 adet muz",
        "1/4 çay kaşığıtarçın",
        "1 çay kaşığı vanilya özütü",
      ],
      hazirlanis:
      "   Not:Badem unu hazırlamak için; bademleri, blender’da toz haline getirip un formuna sokabilirsiniz. Aynı şekilde Hindistan cevizini de bu yöntemle çekip 10 dakika içerisinde tahıl düşmanı bir un elde edebilirsiniz\n"
          "   Fırını önceden 180 derecede ısıtın.Bal ve Hindistan cevizi yağını ocakta, kısık ateşte ısıtın, homojen bir karışım elde edene kadar karıştırın. Soğumaya bırakın.Karıştırma kabına aldığınız yumurtaları çırpın. Çatalla ezdiğiniz muzu ekleyin. Ballı yağ karışımı, süt ve vanilya özütünü ilave edin.Hindistan cevizi ununu ekleyip iyice karıştırın. Fındıkları çekip içerisine ekleyin. Elde ettiğiniz harcı, yağlı kağıt yerleştirdiğiniz muffin kalıplarına paylaştırın. Önceden ısıtılmış fırında üzerleri kızarana kadar yaklaşık 20-25 dakika pişirin. Kalıplarından çıkartıp ılık olarak servis edin.",
    ),
  ];

  List<Tarif> dinnerList = [
    Tarif(
        ogunZamani: "AKŞAM YEMEĞİ",
        tarifAd: "Avokado Salatası",
        imagePath: "assets/images/yemek1.jpg",
        kcal: '250 kcal',
        sure: "15 dk",
        icindekiler: [
          "İÇİNDEKİLER",
          "2 olgun avokado",
          "1/3 demet maydanoz",
          "1/3 demet dereotu",
          "4-5 dal taze nane",
          "1/2 adet limon",
          "1 kase nar",
          "1 avuç ceviz (ya da badem)",
          "1/4 çay kaşığıtarçın",
          "1 yemek kaşığı zeytinyağı",
        ],
        hazirlanis:
        "  Avokadoları önce ikiye bölün kabuklarını soyup, limon suyunu iyice avokadoya yedirin.Yeşillikleri yıkayıp ince ince kıyın. Nane yapraklarını doğramayabilirsiniz.Doğranan yeşillikleri bir kaba alıp damak tadınıza göre limon sıkın. Zeytinyağını da ekleyip, iyice karıştırın.Narları ve cevizleri ekleyip karıştırın. Ceviz yerine badem de koyabilirsiniz.Servis tabağına yeşillikleri alıp, üzerine küp küp irice doğradığınız avokadoları ekleyin.En üste tekrar nar ve ceviz serpin. Afiyet olsun."),
    Tarif(
      ogunZamani: "AKŞAM YEMEĞİ",
      tarifAd: "Diyet Çorba",
      imagePath: "assets/images/yemek2.jpg",
      kcal: "300 kcal",
      sure: "40 dk",
      hazirlanis:
      "   Fosfor ve vitamin bakımından zengin bir içeriğe sahip karnabahar yanı sıra diğer sebze ve baharatların bir araya geldiği minimum yağ ve içme suyuyla hazırlanan çorba tarifi, düzenli ve sistemli bir beslenme şemasında fazla ödemin vücuttan atılmasına, incelmenize yardımcı oluyor.İçme suyu yerine sebze suyu kullanmayı da tercih edebilirsiniz.\n "
          "  Kuru soğan ve sarımsağı küçük parçalar halinde yemeklik doğrayın. Kabuğunu soyduğunuz domatesi, küçük küpler şeklinde kesin.Zeytinyağını bir tencerede kızdırdıktan sonra soğan ve sarımsakları 1-2 dakika kadar soteleyin.Ardından küçük küpler halinde kesilmiş domatesleri ekleyin ve 1-2 dakika daha soteleyin.Yumuşayan domateslere 250 ml. sıcak su ve 200 gram haşlanmış karnabaharı katın.2-3 dakika kaynayan çorba karışımına zerdeçal, köri, tuz, pul biber ve kalan 750 ml. sıcak suyu ilave edin.Pişmekte olan çorba karışımına çubuk tarçını ekleyip aromasını vermesi adına 1-2 dakika beklettikten sonra çıkartın.Aralıklarla karıştırmaya devam ettiğiniz çorbayı, 9-10 dakika daha pişirin.Ocaktan aldığınız çorbayı derin bir kaseye aktarın. Kavrulmuş file fındık ve bademleri kattıktan sonra mutfak robotu ya da blenderdan geçirdiğiniz çorbayı sıcak ya da ılık olarak sevdiklerinizle paylaşın.",
      icindekiler: [
        "İÇİNDEKİLER",
        "200 gram karnabahar (haşlanmış)",
        "1 orta boy domates",
        "1/2 orta boy kuru soğan",
        "15 gram kavrulmuş file badem",
        "15 gram kavrulmuş file fındık",
        "1 dişsarımsak",
        "2 yemek kaşığı sızma zeytinyağı)",
        "1 litre sıcak su",
        "1 çay kaşığı zerdeçal",
        "1 çay kaşığıköri",
        "1 adet çubuk tarçın",
        "1/2 çay kaşığıtuz",
        "1 çay kaşığıpul biber",
      ],
    ),
    Tarif(
      ogunZamani: "AKŞAM YEMEĞİ",
      tarifAd: "Kinoa Salatası",
      imagePath: "assets/images/yemek3.jpg",
      kcal: "250 kcal",
      sure: "30 dk",
      icindekiler: [
        "İÇİNDEKİLER",
        "130 gram kinoa",
        "1 demet maydanoz",
        "1 adet domates",
        "1 adet salatalık",
        "SOSU İÇİN",
        "3 yemek kaşığı zeytinyağı",
        "1 tatlı kaşığı nar ekşisi",
        "1/2 çay kaşığı tuz",
      ],
      hazirlanis:
      "  Kinoayı haşlayacağınız su, 1 ölçüye 1,5 ölçü ağırlığında olmalıdır. 130 gram kinoa için 195-200 ml. su kullanabilirsiniz.\n"
          "  Kinoayı bol suda yıkayın, fazla suyunu süzdürün.Ölçülü su ve tuzu orta boy bir tencereye alın. Tencereye aldığınız kinoayı, bir taşım kaynattıktan sonra altını kısıp tencerenin kapağını kapatın ve suyunu çekene kadar pişmeye bırakın. 5-10 dakika kadar demlendirin.Doğranmış maydanoz, domates ve salatalığı bir kasede karıştırın. Demleyip dinlendirdiğiniz kinoayı bu karışıma ekleyin.Sos karışımı için gerekli tüm malzemeleri karıştırın.Zeytinyağlı sos karışımını hazırladığınız kinoalı karışıma katıp iyice karıştırın.Bekletmeden servis edin. Afiyetler olsun!",
    ),
    Tarif(
      ogunZamani: "AKŞAM YEMEĞİ",
      tarifAd: "Ton Balıklı Salata",
      imagePath: "assets/images/yemek4.jpg",
      kcal: "650 kcal",
      sure: "25 Dk",
      icindekiler: [
        "İÇİNDEKİLER",
        "1 adet yumurta",
        "5-6 adet çilek",
        "1,5 paketton balığı",
        "10 yaprak ıspanak",
        "1 tatlı kaşığı çörek otu",
        "3 yemek kaşığı zeytinyağı",
        "1 çay kaşığıtuz",
        "1/2 adet limon",
      ],
      hazirlanis:
      "  Yumurtayı bir minik cezve ya da tencerenin içerisine koyun. Üzerine su ilave ederek kaynamaya bırakın.O sırada avokadonun kabuğunu dikkatli bir şekilde soyup dilimleyin.O sırada avokadonun kabuğunu dikkatli bir şekilde soyup dilimleyin.Çileklerin saplarını çıkarıp dilimleyin. Temizlenmiş ıspanakları da iri iri doğrayın.Bir kaseye ıspanakları koyun. Üzerine limon, zeytinyağı ve tuzu ilave edip karıştırın.Yumurtayı haşaldıktan sonra kabuklarını soyup ortadan ikiye bölün. Ardından tüm malzemeleri ayrı ayrı kaseye aktarıp üzerlerine biraz zeytinyağı ve çörekotu gezdirin.Afiyet olsun!",
    ),
    Tarif(
        ogunZamani: "AKŞAM YEMEĞİ",
        tarifAd: "Diyet Kek",
        imagePath: "assets/images/yemek5.jpg",
        kcal: "650 kcal",
        sure: "55 dk",
        hazirlanis:
        "   Bu kekin püf noktası unu güzelce eleyerek ilave etmekte ve unu kıvam alana kadar kontrollü bir şekilde ilave etmekte saklı. Tam buğday unu kullanıldığı için kıvamı da çabuk toparlanacaktır. Dilerseniz bu keke kakao ilave edebilirsiniz. Vanilya özütü, yoksa vanilin de ekleyebilirsiniz. Muzlarınızın olgunlaşmış olmasına ama çürümeye yakın olgun olmamalarına da dikkat edin. Pişirme süresi fırınınızın performansına göre değişkenlik gösterebilir. İçinden cevizi çıkarıp, fındık, badem gibi farklı yemişler de kullanabilirsiniz. Muzlarınız küçükse 4 küçük adet, orta boysa 3 adet kullanın. Dilerseniz yoğurt kullanmadan süt miktarını biraz arttırarak da tarifi deneyebilirsiniz. Sütünüzü diyet süt olarak da tercih edebilirsiniz.\n\n"
            "   Yumurtaları bir kabın içerisine alın. Üzerine bal ilave ederek güzelce çırpınBalla yumurta güzelce çırpıldıktan sonra içerisine süt, zeytinyağı ve yoğurdu ilave ederek çırpma işlemine devam edin.Ayrı bir yerde muzları ezin. Ayrı bir kapta ezdiğiniz muzları sıvı malzemelerin üzerine ekleyin ve karıştırın.Ardından ceviz için, kabartma tozunu, tarçını ilave edin. Unu da azar azar ilave etmeye başlayın.Spatula yardımıyla kekinizin tüm malzemelerini içerisinde topak kalmayacak şekilde karıştırın. Kekinizin kıvamı çok koyu bir kıvamda olmamalı. Klasik kek kıvamında hafif akışkan bir kek elde edin.Kekinizin harcını yağlanmış unlanmış baton bir kek kalıbına ya da içerisine pişirme kağıdı konmuş yuvarlak bir kek kalıbına aktarın. Dilerseniz üzerine muz dilimleri de dizebilirsiniz.180 derecede önceden ısıtılmış fırında yaklaşık 30-40 dakika arası pişirin. Çıkarıp oda sıcaklığında en az 40 dakika dinlendirin. Dinlenen kekinizi dilimleyerek servis edin. Afiyetler olsun.",
        icindekiler: [
          "İÇİNDEKİLER",
          "3 adetyumurta"
              "2 adet büyük boy muz (olgun ya da çok olgun)",
          "1,5 çay bardağı bal",
          "1 su bardağı süt",
          "2 yemek kaşığı yoğurt",
          "1,5 çay bardağı zeytinyağı",
          "1/2 çay bardağı ince çekilmiş ceviz içi",
          "1 çay kaşığı tarçın",
          "1 paket kabartma tozu",
          "3 - 3,5 su bardağı tam buğday unu",
        ]),
    Tarif(
        ogunZamani: "AKŞAM YEMEĞİ",
        tarifAd: "Izgara Sebze",
        imagePath: "assets/images/yemek6.jpg",
        kcal: "200 kcal",
        sure: "30 dk",
        hazirlanis:
        "   Uç kısımlarını aldığınız kabak ve patlıcanları, kabuklarını soymadan iri parçalar halinde kesin.Ortadan ikiye kesip çekirdeklerini çıkardığınız etli kırmızı biberleri iri parçalar halinde kesin. Kiraz domateslerin sap kısımlarını çıkartın.Doğranmış sebzeleri ve bütün kiraz domatesleri sırasıyla tahta şişlere geçirin.Üzerlerine bir yumurta fırçası yardımıyla zeytinyağı sürdükten sonra yağlı kağıt üzerinde fırında ya da ızgarada renk alana kadar pişirin.Pesto sosu hazırlamak için; yaprak yaprak ayıklayıp, bol suda yıkadığınız fesleğenleri kuruladıktan sonra incecik kıyın.Çıtırlık kazanması ve aromasının daha yoğun hissedilmesi için çam fıstıklarını yağsız tavada 2-3 dakika kadar kavurun.Parmesan peynirini rendenin ince tarafıyla rendeleyin. Sarımsakları ayıkladıktan sonra tuz ilavesi ile bir havanda dövün.Ezilmiş sarımsakları, kavrulmuş çam fıstıkları ve kıyılmış fesleğen yaprakları ile mutfak robotunda püre haline getirin.Rendelenmiş parmesan peyniri ve zeytinyağını azar azar ekleyip karıştırma işlemini sürdürün.Izgara sebzeleri servis tabağına aldıktan sonra üzerlerine kıvam alan pesto sosu ve nar ekşisini gezdirin. Bekletmeden ılık olarak sevdiklerinizle paylaşın.\n  Afiyet Olsun.",
        icindekiler: [
          " İÇİNDEKİLER",
          "2 orta boy patlıcan",
          "2 orta boy kabak",
          "2 orta boy kırmızı biber",
          "10 kiraz domates",
          "SOSU İÇİN",
          "1 büyük demet taze fesleğen",
          "50 gram çam fıstığı",
          "75 gram parmesan peyniri",
          "2 diş sarımsak",
          "1 su bardağızeytinyağı",
          "1/4 çay kaşığıtuz",
        ]),
  ];

  List<Tarif> dessertList = [
    Tarif(
        ogunZamani: "TATLI",
        tarifAd: 'Sorbe',
        imagePath: 'assets/images/tatlı1.jpg',
        kcal: '139 kcal',
        sure: "60 dk",
        hazirlanis:
        "  Karpuzu dilimleyip çekirdeklerini çıkarın. Bir kaba koyarak dolaba atın. Ertesi gün tam da istediğimiz gibi donmuş karpuz elde edeceksiniz.Peki neden donduruyoruz? Dondurduğumuzda meyvenin özütünü daha iyi alırız ve sorbemiz sulanmaz.Bir tencereye kirazları, şekeri ve suyu koyun iyice şekeri eritin. Kaynatmanıza gerek yok. Sonra bu karışımı süzgeçten geçirin ve parçalayıcınıza donmuş karpuzlarla birlikte koyun. Yarım limonun suyunu sıkın. Eğer parçacıklı istiyorsanız parçalayıcınızı az çalıştırın. Pürüzsüz istiyorsanız çok çalıştırın hatta sonrasında süzgeçten de geçirebilirsiniz.Yayvan bir kaba karışımı dökün ve birer saat arayla 3 kere arada mikserle karışımı karıştırıp havalandırın.12 saat sonra afiyetle yiyebilirsiniz.",
        icindekiler: [
          "İÇİNDEKİLER",
          "1/2 Karpuz",
          "10 adet Kiraz",
          "1/2 Bardak Şeker",
          "1/2 Bardak Su",
          "1/2 Limon",
          "5 Ceviz",
          "25 gr fındık",
        ]),
    Tarif(
      ogunZamani: "TATLI",
      tarifAd: 'Granola',
      imagePath: 'assets/images/tatlı2.jpg',
      kcal: '130 kcal',
      sure: "25 dk",
      hazirlanis:
      "     Not:Kullanacağınız kuru yemişlerin çiğ olmasına özen gösterin.\n"
          "     Ceviz içi, fındık, badem ve kaju fıstığını bir buzdolabı poşetinin içine alın.Bir bardak ya da tokmak yardımıyla iri parçalar haline gelinceye kadar kırın.İri parçaladığınız kuru yemişleri bir kabın içine alın.Üzerine yulaf, bal, pekmez ve tarçını ekleyerek güzelce karıştırın.Yağlı kağıt serili fırın tepsisinin üzerine ince bir tabaka halinde yayın.180 derecede önceden ısıtılmış fırında 10 dakika kadar pişmeye bırakın.10 dakikanın sonunda çıkarıp spatula ya da tahta kaşık yardımıyla güzelce karıştırın.Aynı işlemi bir kez daha tekrarlayın ve 5 dakika daha pişirin.Çıkarıp karıştırarak oda sıcaklığında dinlendirin.Dinlendikten sonra içine kuru üzüm ve vişne kurusunu ilave edin. Granolanız soğudukça katılaşacaktır. Bu nedenle elinizle mutlaka parçalar haline gelecek şekilde kırın.Bir kavanozun içinde saklayabileceğiniz, sabah kahvaltılarında afiyetle tüketebileceğiniz granolanız hazır. Afiyet olsun.",
      icindekiler: [
        "İÇİNDEKİLER",
        "2 Su Bardağı Yulaf Ezmesi",
        "1 çay bardağı ceviz içi",
        "3 yemek kaşığı kaju",
        "1 çay bardağı çiğ badem",
        "1 çay bardağı fındık",
        "4-5 yemek kaşığıvişne kurusu",
        "1 çay bardağı kuru üzüm (çekirdeksiz)",
      ],
    ),
    Tarif(
        ogunZamani: "TATLI",
        tarifAd: 'Protein Bar',
        imagePath: 'assets/images/tatlı3.jpg',
        kcal: '414,4 kcal',
        sure: "40 dk",
        hazirlanis:
        "     Ceviz içi, fındık, badem ve kaju fıstığını bir buzdolabı poşetinin içine alın.Bir bardak ya da tokmak yardımıyla iri parçalar haline gelinceye kadar kırın.İri parçaladığınız kuru yemişleri bir kabın içine alın.Üzerine yulaf, bal, pekmez ve tarçını ekleyerek güzelce karıştırın.Yağlı kağıt serili fırın tepsisinin üzerine ince bir tabaka halinde yayın.180 derecede önceden ısıtılmış fırında 10 dakika kadar pişmeye bırakın.10 dakikanın sonunda çıkarıp spatula ya da tahta kaşık yardımıyla güzelce karıştırın.Aynı işlemi bir kez daha tekrarlayın ve 5 dakika daha pişirin.Çıkarıp karıştırarak oda sıcaklığında dinlendirin.Dinlendikten sonra içine kuru üzüm ve vişne kurusunu ilave edin. Granolanız soğudukça katılaşacaktır. Bu nedenle elinizle mutlaka parçalar haline gelecek şekilde kırın.Bir kavanozun içinde saklayabileceğiniz, sabah kahvaltılarında afiyetle tüketebileceğiniz granolanız hazır. Afiyet olsun.",
        icindekiler: [
          "İÇİNDEKİLER",
          "4-5 adet kuru kayısı",
          "2 adet hurma",
          "5 yemek kaşığı yulaf unu",
          "1/2 çay bardağı badem sütü",
          "1 su bardağı çiğ badem",
          "2 yemek kaşığı fıstık ezmesi",
        ]),
  ];

  List<Tarif> beverageList = [
    Tarif(
        ogunZamani: "İÇECEK",
        tarifAd: "Çilekli Smoothie",
        imagePath: "assets/images/detoks1.jpg",
        kcal: "359 kcal",
        sure: "10 dk",
        hazirlanis:
        "Bir karıştırıcıda çilek, muz, mango, yoğurt, fındık ezmesi, keten ezmesi, vanilya ve buz küplerini (veya suyu) karıştırın. Pürüzsüz olana kadar püre haline getirdikten sonra içilmeye hazır. ",
        icindekiler: [
          "İÇİNDEKİLER",
          "1/2 Muz",
          "1/2 Mango",
          "10 Adet Çilek",
          "1/2 Tabak Yoğurt",
          "1 Tatlı Kaşığı Fındık Yağı",
          "Vanilya Özütü",
          "Yarım Bardak Su",
          "Keten Tohumu",
        ]),
    Tarif(
        ogunZamani: "İÇECEK",
        tarifAd: "Salatalık Detoksu",
        imagePath: "assets/images/detoks2.jpg",
        kcal: "223 kcal",
        sure: "10 dk",
        hazirlanis:
        "Detoks suyu söz konusu olduğunda salatalıktan söz etmeden geçemeyiz elbette. Salatalık, vitaminler, flavonoidler ve iltihapla savaşan, beyin sağlığınızı koruyan ve hatta nefesini ferahlaştıran diğer sağlıklı bileşikler de dahil olmak üzere birçok faydayı ayağımıza kadar getirmektedir. Üstelik salatalık detoks suyu yapmak da oldukça basit. Yarım litre su içerisine 2 salatalığı dilimleyerek atın ve bir iki saat bekleyin.Dilerseniz soğuk için.Salatalığın eşsiz meyvelerle birleişimden doğacak tada bayılacaksınız.",
        icindekiler: [
          "İÇİNDEKİLER",
          "1 Salatalık",
          "1 Limon",
          "1 Greyfurt",
          "1/2 Tabak Yoğurt",
          "1 Taze Nane",
        ]),
    Tarif(
        ogunZamani: "İÇECEK",
        tarifAd: "Ananaslı Detoks",
        imagePath: "assets/images/detoks3.jpg",
        kcal: "700 kcal",
        sure: "20 dk",
        hazirlanis:
        "Tüm malzemeler dilimlendikten sonra yarım litre suyun içerisinde bekletilir. Daha sonra rahatlıkla tüketebilirsiniz. Metabolizmayı hızlandırırken aynı zamanda karın şişmesini azaltmaya yardımcı olacak bir içecek arıyorsanız, bu lezzetli tropikal detoks suyu tarifi ihtiyacınızı ciddi anlamda karşılayacaktır. Salatalık karında yaşanan şişkinliği azaltır. Bu suda yer alan tüm Bunlar antioksidanlar ve potasyumla doludur. Bu da yorucu bir antrenman sırasında ve sonrasında yudumlamak için mükemmel bir içecek ürettiniz demektir.  Ananas doğal olarak metabolizma hızınızı artırır ve içerdiği C vitamini sayesinde sizin birçok rahatsızlıktan da korunmanıza yardımcı olur. Salatalık gibi, ananaslar da antioksidanlarla doludur. Bunun yanı sıra çok da lezzetlidir.",
        icindekiler: [
          "İÇİNDEKİLER",
          "1 Ananas",
          "1 Dilim Elma",
          "1 Salatalık",
          "1/2 Litre Su",
        ]),
    Tarif(
        ogunZamani: "İÇECEK",
        tarifAd: "Protein Karışımı",
        imagePath: "assets/images/detoks4.jpg",
        kcal: "40 gr protein",
        sure: "30 dk",
        hazirlanis:
        "Fındık ve fındık ezmesi, protein karışımınıza eklemek için favori ve lezzetli bir protein kaynağıdır. Sadece protein almakla kalmayacak, aynı zamanda lif ve sağlıklı yağları da vücudunuza alabileceksiniz.Karışımı hazırlamak için tüm kuruyemişleri rendeden geçirdikten sonra sütle birlikte çalkalayın.",
        icindekiler: [
          "İÇİNDEKİLER",
          "1 lt Süt",
          "25 grBadem",
          "25 gr Yer fıstığı",
          "25 gr Kaju",
          "5 Ceviz",
          "25 gr fındık",
        ])
  ];

  int getLength(String listName) {
    int a = breakfastList.length;
    int b = dinnerList.length;
    int c = beverageList.length;
    int d = dessertList.length;
    switch (listName) {
      case 'breakfast' :
        {
          return a;
        }
        break;
      case 'dinner':
        {
          return b;
        }
        break;
      case "beverage":
        {
          return c;
        }
        break;
      case 'dessert':
        {
          return d;
        }
        break;
    }
  }
}