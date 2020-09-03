import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // 에뮬레이터의 debug 표시를 없앰
      title: 'KAKAO',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        title: Text('KAKAO',
            style: TextStyle(
            color: Colors.white,
        ),
        ),
        backgroundColor: Colors.cyan,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/lion.gif'),
                radius: 60.0,
                backgroundColor: Colors.yellowAccent
              ),
            ),
            Divider(
              height: 60.0, // divider 선을 기준으로 위 아래 여백의 합을 의미
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            Text('이름',
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 2.0
            )),
            SizedBox(
              height: 10.0,
            ),
            Text('라이언',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text('성격',
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0
                )),
            SizedBox(
              height: 10.0,
            ),
            Text('발랄',
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(  // 위젯을 가로로 나열
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('귀여움',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                )),
              ],
            ),
            Row(  // 위젯을 가로로 나열
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('친근함',
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                    )),
              ],
            ),
            Row(  // 위젯을 가로로 나열
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('인기많음',
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                    )),
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/lion.gif'),
                radius: 40.0,
                backgroundColor: Colors.yellowAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
