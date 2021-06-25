import 'dart:convert';
import 'package:http/http.dart';

class WorldTime {

 int abr;
 DateTime time;
 String sehir;
 String url;
 WorldTime({this.url,this.sehir});


Future <int> getTime() async {
  Response time =await get(Uri.parse("http://worldtimeapi.org/api/timezone/Europe/Istanbul"));
  Map json = jsonDecode(time.body);
  this.time=DateTime.parse(json["utc_datetime"]);
  this.abr=int.parse(json["abbreviation"]);
  this.time=this.time.add(Duration(hours:this.abr));
  return this.time.weekday;


}

}