import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {
  final String s1='2019 ~ 至今 國立高雄科技大學\n'
      '2016 ~ 2019 台中市立大甲高工\n'
      '2013 ~ 2016 南投縣立中興國中\n'
      '2007 ~ 2013 水里鄉永興國小';

  final String s2='證照：\n'
      '數位電子 乙級\n'
      '工業電子 丙級\n\n'
      '技術類 競賽得獎：\n'
      '2019 全國高級中等學校電機電子群專題及創意製作競賽 \n專題組 佳作\n'
      '2017 校內技藝競賽工業電子 \n優勝\n\n'
      '工作經驗：\n'
      '2022 友達A+暑期種子實習生\n'
      '國立高雄科大 電子系辦工讀生';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("學習歷程",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.cyanAccent,
                  offset: Offset(6, 6)),
              ],),
            child:Text(s1,
              style: TextStyle(fontSize: 20),),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.orangeAccent,
                  offset: Offset(6, 6)),
              ],),
            child:Text(s2,
              style: TextStyle(fontSize: 20),),
          ),

          Container(
            color: Colors.white,
            child: Image.asset('images/school.jpeg'),
            height: 300,
            width: 500,
          ),
          SizedBox(height: 30,),

        ],
      ),
    );
  }
}
