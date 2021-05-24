import 'package:flutter/material.dart';
import 'package:ssosa_app/model/coffeeModel.dart';

import 'menuItemcard.dart';

class Recruitment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            menu[0].name,
            style:
                TextStyle(fontSize: 24, fontWeight: FontWeight.bold, height: 2),
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MenuItemCard(i: 0,),
                MenuItemCard(i: 1,),
                MenuItemCard(i: 2,),
                MenuItemCard(i: 3,),
                MenuItemCard(i: 0,),

              ],
            ),
          ),
          Text(
            menu[1].name,
            style:
                TextStyle(fontSize: 24, fontWeight: FontWeight.bold, height: 2),
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MenuItemCard(i: 1,),
                MenuItemCard(i: 2,),
                MenuItemCard(i: 3,),
                MenuItemCard(i: 0,),
                MenuItemCard(i: 1,),
              ],
            ),
          ),
          Text(
            menu[2].name,
            style:
                TextStyle(fontSize: 24, fontWeight: FontWeight.bold, height: 2),
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MenuItemCard(i: 2,),
                MenuItemCard(i: 3,),
                MenuItemCard(i: 0,),
                MenuItemCard(i: 1,),
                MenuItemCard(i: 2,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
