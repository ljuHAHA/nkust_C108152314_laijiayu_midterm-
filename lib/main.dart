import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';

//final player=AudioPlayer();

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _currentindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Midterm'),),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.book),
              label: '學習歷程',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.school),
              label: '大學期間',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.pageview),
              label: '專案方向',
            ),
          ],
          onTap: (index) { setState(() {
            _currentindex=index;
            if (index!=0) {
              //player.stop();
            }
          });
          },
        ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  final String s1='我是賴佳淯，目前就讀於高雄科技大學電子工程系大四，我來自南投水里，水里是一個好山好水的地方。\n'
      '我的興趣是打網球，每週假日都會與朋友一同到球場熱血！！\n'
      '最喜歡吃的食物是巧克力，心情不好的時候吃，臉上會充滿笑容 ：）';

  @override
  Widget build(BuildContext context) {

    //final player=AudioPlayer();
    //player.play(AssetSource("simple.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("Who am I",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,)),
          ),
          //文字自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.amberAccent,
                  offset: Offset(6, 6)),
              ],),
            child:Text(s1,
              style: TextStyle(fontSize: 20),),
          ),

          //放一張照片
          Container(
            color: Colors.redAccent,
            child: Image.asset('images/dog.jpeg'),
            height: 200,
            width: 200,
          ),
          SizedBox(height: 30,),

          //一列放兩個圖
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/tennis.jpeg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/chocolate.jpeg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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

class screen3 extends StatelessWidget {
  final String s1='一、人：多認識一些人\n'
      '二、事：學好一種外文\n'
      '三、時：練習行程規劃\n'
      '四、地：掌握身處的空間\n'
      '五、物：建立個人資產的觀念';

  final String s2='1. 自修之道：從舉一反三到無師自通\n'
      '2. 基礎知識：數學、英語、電腦、網路\n'
      '3. 實踐貫通：「做過的才真正明白」\n'
      '4. 培養興趣：開拓視野，立定志向\n'
      '5. 積極主動：果斷負責，創造機遇\n'
      '6. 掌控時間：事分輕重緩急，人應自控自覺';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('images/169.jpeg'),
                                fit: BoxFit.cover,),
      ),
      child:Column(
        children:<Widget>[
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("大學期間",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.limeAccent,
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
              boxShadow: [ BoxShadow(color: Colors.greenAccent,
                  offset: Offset(6, 6)),
              ],),
            child:Text(s2,
              style: TextStyle(fontSize: 20),),
          ),





        ],
      ),
    );

  }
}

class screen4 extends StatelessWidget {
  final String s1='1. 具備ASP.NET C# 軟體開發經驗，熟悉.NET、.NET Core框架\n'
  '2. 具備MS SQL應用開發經驗，熟悉T-SQL基礎，孰悉資料庫 (SQL/MySql) Entity Framework Core 開發\n'
  '3. 具備JavaScript及AJAX應用開發經驗，有基礎CSS or HTML5網頁技術應用經驗\n'
  '4. 具備開發、串接 Web API / Restful API 經驗\n'
  '5. 掌握程式碼品質及可維護性\n'
  '6. 孰悉GIT版控軟體\n'
  '7. 跨部門合作，能理解PM提出的需求內容並且提供相對應的開發限制或是解決方法';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("專案方向",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.white24,
                  offset: Offset(6, 6)),
              ],),
            child:Text(s1,
              style: TextStyle(fontSize: 20),),
          ),

          Container(
            color: Colors.white,
            child: Image.asset('images/work.jpeg'),
            height: 300,
            width: 500,
          ),
          SizedBox(height: 30,),

        ],
      ),
    );
  }
}