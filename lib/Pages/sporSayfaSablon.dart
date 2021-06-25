import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:healthful/Lists/sporList.dart';

class SporSayfaSablon extends StatefulWidget {
  @override
  _SporSayfaSablonState createState() => _SporSayfaSablonState();
}

class _SporSayfaSablonState extends State<SporSayfaSablon> {

  bool duraklamismi =false;
  List<bool> tiklanmaDurum = [
  ];


  CountDownController _controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    List<Spor> sporListem = ModalRoute
        .of(context)
        .settings
        .arguments;


    for (int i = 1; i < sporListem.length+1; i++) {
      tiklanmaDurum.add(false);

    }


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
                child: Image.asset(sporListem[0].appbarImagePath,
                    fit: BoxFit.cover),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      for (int i = 1; i < sporListem.length; i++) //Appbardaki fotoğraf için geçici çözüm bulmuştum.O yüzden i=1'den başlayıp length'e gidiyor.Normalde i=0'dan başlayıp length'e kadar gitmesi gerekiyordu.
                        _sporveCountdownBuilder(
                          context: context,
                          sporName: sporListem[i].sporName,
                          sporImagePath: sporListem[i].sporImagePath,
                          sporSure: sporListem[i].sporSure,
                          index: i,
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

  Widget _sporveCountdownBuilder({
    @required BuildContext context,
    @required String sporName,
    @required String sporImagePath,
    @required String sporSure,
    @required int index,

  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white.withOpacity(0.5),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: tiklanmaDurum[index]
            ? null
            : () {
          setState(() {
            int _duration = 15;

            showDialog(
              context: context,
              builder: (BuildContext context) {
                return cupertinoAlertDialog(
                    _duration, context, index, sporName);
              },
            );
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 7),
              child: Image.asset(sporImagePath, fit: BoxFit.scaleDown),
              height: 50,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.blueGrey[100],
              ),
            ),
            Text(
              sporName,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black54,
              ),
            ),
            Text(
              sporSure,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  CupertinoAlertDialog cupertinoAlertDialog(int _duration, BuildContext context,
      int index, sporName) {
    return CupertinoAlertDialog(
      title: Padding(
        padding: const EdgeInsets.all(2.0),
        child: new Text(sporName),
      ),
      content: GestureDetector(
        onDoubleTap: (){
          setState(() {
            if (duraklamismi) {
              _controller.resume();
              duraklamismi = false;
            } else {
              _controller.pause();
              duraklamismi = true;
            }
          });
        },
        onLongPressUp: (){
          setState(() {
            tiklanmaDurum[index] = true;
          });
          Navigator.of(context).pop();
        },
        child: CircularCountDownTimer(
          duration: _duration,
          initialDuration: 0,
          controller: _controller,
          isReverse: true,
          ringColor: Colors.black45,
          fillColor: Colors.amber,
          strokeWidth: 5.0,
          onComplete: () {
            setState(() {
              Navigator.of(context).pop();
              tiklanmaDurum[index] = true;
            });
          },
          width: MediaQuery
              .of(context)
              .size
              .width / 5,
          height: MediaQuery
              .of(context)
              .size
              .height / 5,
        ),
      ),
      actions: <Widget>[
        // usually buttons at the bottom of the dialog
        new FlatButton(
          child: Container(
            child: Center(
              child: Icon(Icons.logout),
            ),
          ),
          onPressed: () {
            setState(() {
              tiklanmaDurum[index] = true;
            });
            Navigator.of(context).pop();
          },
        ),

        new FlatButton(
          child: Container(
            child: Center(child: Icon(Icons.pause)),
          ),
          onPressed: () {
            setState(() {
              if (duraklamismi) {
                _controller.resume();
                duraklamismi = false;
              } else {
                _controller.pause();
                duraklamismi = true;
              }
            });
          },
        ),
      ],
    );
  }
}
