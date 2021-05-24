import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:ssosa_app/view/components/deadlinePage.dart';
import 'package:ssosa_app/view/components/recruitmentPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    print(height);

    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  SwiperBox,
                  /*Container(
                    // 이미지
                    height: height * 0.3,
                    width: width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/header.jpg"),
                            fit: BoxFit.cover)),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.1),
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(1.0),
                      ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
                    ),
                  ),*/
                  Positioned(
                      bottom: 90,
                      left: 20,
                      child: RichText(
                          text: TextSpan(
                              text: "Let's be ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 20),
                              children: [
                            TextSpan(
                                text: "together \nSSOSA",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24))
                          ])))
                ],
              ),
              Transform.translate(
                offset: Offset(0.0, -(height * 0.3 - height * 0.29)),
                child: Container(
                    width: width,
                    height: height * 1.1,
                    // 높이 기본 0.3
                    padding: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // borderRadius: BorderRadius.only(
                      //   topLeft: Radius.circular(30),
                      //   topRight: Radius.circular(30),
                      // ),
                    ),
                    child: DefaultTabController(
                      length: 2,
                      child: Column(
                        children: [
                          TabBar(
                              labelColor: Colors.black,
                              labelStyle:
                                  TextStyle(fontWeight: FontWeight.bold),
                              unselectedLabelColor: Colors.grey[400],
                              unselectedLabelStyle: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 17),
                              indicatorSize: TabBarIndicatorSize.label,
                              indicatorColor: Colors.transparent,
                              tabs: [
                                Tab(
                                  child: Text("모집중"),
                                ),
                                Tab(
                                  child: Text("마감"),
                                ),
                              ]),
                          SizedBox(
                            height: 5,
                          ),
                          /*Padding( // 검색
                            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 3),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, right: 15),
                                    child: Icon(
                                      Icons.search,
                                      size: 30,
                                    ),
                                  ),
                                  hintText: 'Search your coffee',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(
                                          width: 1.0, color: Colors.grey[400]))),
                            ),
                          ),*/
                          Container(
                            height: height * 1.0,
                            child: TabBarView(
                              children: [
                                Recruitment(),
                                Deadline(),
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

var SwiperBox = Container(
  height: 250,
  //margin: EdgeInsets.only(top: 0),
  child: Padding(
    padding: EdgeInsets.all(1),
    child: Swiper(
      autoplay: true,
      // scale: 0.9,
      // viewportFraction: 0.9,
      scale: 1,
      viewportFraction: 1,
      // pagination: SwiperPagination(
      //     alignment: Alignment.bottomRight,
      //     margin: EdgeInsets.fromLTRB(0, 0, 20, 20)),
      //onIndexChanged: ,
      itemCount: imgList.length,
      itemBuilder: (BuildContext context, int index) {
        return Image.network(imgList[index]);
      },
    ),
  ),
);

final List<String> imgList = [
  'https://reasley.com/wp-content/uploads/2020/04/one.jpg',
  'https://reasley.com/wp-content/uploads/2020/04/two.jpg',
  'https://reasley.com/wp-content/uploads/2020/04/three.jpg'
];
