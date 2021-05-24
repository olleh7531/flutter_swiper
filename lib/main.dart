import 'package:flutter/material.dart';
import 'package:ssosa_app/view/components/bottom_bar.dart';
import 'package:ssosa_app/view/pages/homePage.dart';
import 'package:ssosa_app/view/pages/loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController controller;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 위 기본이
      title: 'BbongFlix',
      theme: ThemeData(
          //brightness: Brightness.dark,
          //primaryColor: Colors.black,
          //accentColor: Colors.white
      ),

      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 1.0,
            leading: IconButton(
                icon: Icon(Icons.people_outline_outlined,color: Colors.black,size: 30),
                onPressed: (){}
            ),
            title: SizedBox(
              height: 25,
              child: Text("About ssosa",style: TextStyle(color: Colors.black),),
            ),
            actions: [
              Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Icon(Icons.send,color: Colors.black,size: 30)
              )
            ],
          ),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              HomePage(),
              Container(
                child: Center(
                  child: Text('즐거찾기'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('내모임'),
                ),
              ),
              LoginPage(),
              /*Container(
                child: Center(
                  child: Text('로그인'),
                ),
              ),*/
            ],
          ),
          bottomNavigationBar: BottomBar(),
        ),
      ),
    );
  }
}
