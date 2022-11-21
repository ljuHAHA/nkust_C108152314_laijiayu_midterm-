
import 'package:flutter/material.dart';

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child:Text('Business'),);
    /*children: [
      //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [Text("大一時期"),],
      ),
      SizedBox(height: 10,),
      Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 200,
            width: 200,
            child: ListView(
              children: [
                //條列式參考
                Text('1. 學好英文'),
                Text('2. 組合語言'),
                Text('3. 考取證照'),
                Text('4. 人際關係'),
              ],
            ),
          ),
        ],),
      Row(),
      Row(),
      Row(),
      Row(),
      Row(),
      Row(),

    ],
    ),);*/
  }
}