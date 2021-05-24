import 'package:flutter/material.dart';
import 'package:ssosa_app/model/coffeeModel.dart';

class MenuItemCard extends StatelessWidget {
  final int i;

  const MenuItemCard({Key key, this.i}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
      child: Row(
       children: [
         // ClipRRect(
         //   borderRadius: BorderRadius.circular(10),
         //   child: Image.asset(
         //     menu[0].image,
         //     fit: BoxFit.cover,
         //   ),
         // ),
         // GestureDetector(
         //   child: Container(
         //     width: 180,
         //     height: 240,
         //     decoration: BoxDecoration(
         //       color: Colors.black,
         //       image: DecorationImage(
         //         image: AssetImage(menu[0].image),
         //         fit: BoxFit.cover,
         //       ),
         //     ),
         //     child: Text('addwd',style: TextStyle(color: Colors.white),) ,
         //   ),
         //     onTap: (){
         //      print("확인");
         //     },
         // ),
         GestureDetector(
           child: SizedBox(
             width: 160,
             child: Padding(
               padding: const EdgeInsets.only(left: 10),
               child: Column(
                 children: [
                   AspectRatio(
                     aspectRatio: 1,
                     child: Container(
                       padding: EdgeInsets.all(1),
                       child: ClipRRect(
                         borderRadius: BorderRadius.circular(18),
                         child: Image.asset(
                           menu[i].image,
                           fit: BoxFit.fill,
                         ),
                       ),
                     ),
                   ),
                   const SizedBox(
                     height: 5,
                   ),
                   Text(menu[i].shortDesc)
                 ],
               ),
             ),
           ),
           onTap: () {
             print("a");
           },
         ),

       ],

      ),
    );
  }
}
