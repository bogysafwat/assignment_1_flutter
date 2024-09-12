import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Assignment 1', style:  TextStyle(color: Colors.black),),
          leading: Icon(Icons.menu,color: Colors.black,),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search ,color: Colors.black,),)
          ],
          
          
        ),
        body: MyListVeiw(),
      ),
    );
  }
}

class MyListVeiw extends StatelessWidget {
  MyListVeiw({super.key});
  final List<Color> colors = [
    Color(0xFF04C4D9), // '#04C4D9'
    Color(0xFF038C73), // '#038C73'
    Color(0xFF4CA649), // '#4CA649'
    Color(0xFFF23838), // '#F23838'
    Color(0xFFF2226E), // '#F2226E'
    Color(0xFF8A26A6), // '#8A26A6'
    Color(0xFF27A4F2), // '#27A4F2'
    Color(0xFFF28705), // '#F28705'
    Color(0xFFF2D43D), // '#F2D43D'
    Color(0xFF734E46), // '#734E46'
  ];

  @override
  Widget build(BuildContext context) {
   return ListView.builder(
     itemCount: 10,
       itemBuilder:(context, index){
       return Padding(padding: const EdgeInsets.all(12),
       child:Container(
         height: 200,
        decoration: BoxDecoration(borderRadius: const BorderRadius.all(const Radius.circular(10)),color: colors[index]),
         child: Stack(
           children: [
             Align(
               alignment: Alignment.topLeft,
               child: Text('  Top left',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
                ),),
             Align(
               alignment: Alignment.center,
               child: Text('Center',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
                   ),),
             Align(
               alignment: Alignment.bottomRight,
               child: Text('Bottom Right  ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
                   ),),
           ],
         ),





       ),);
       });



  }

}
