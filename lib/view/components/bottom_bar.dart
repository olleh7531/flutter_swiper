import 'package:flutter/material.dart';

import '../../common.dart';

class BottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      child: Container(
        height: 70,
        child: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.transparent,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  size: iconSize,
                ),
                child: Text('홈', style: TextStyle(fontSize: 12),),
              ),
              Tab(
                icon: Icon(
                  Icons.star,
                  size: iconSize,
                ),
                child: Text('즐거찾기', style: TextStyle(fontSize: 12),),
              ),
              Tab(
                icon: Icon(
                    Icons.people_outline,
                    size: iconSize
                ),
                child: Text('내모임', style: TextStyle(fontSize: 12),),
              ),
              Tab(
                icon: Icon(
                  Icons.person_pin,
                  size: iconSize,
                ),
                child: Text('로그인', style: TextStyle(fontSize: 12),),
              )
            ]),
      ),
    );

  }

}
