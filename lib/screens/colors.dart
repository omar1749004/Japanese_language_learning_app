import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:toku/components/list_itsem.dart';
import 'package:toku/models/number.dart';

class Colorss extends StatelessWidget {
   Colorss({super.key});
   
   
final List<Item> Colors = const [
   Item(
    images: "assets/images/colors/color_black.png" ,
     jpName: "black",
     enName: "kuro",
     play: "sounds/colors/black.wav"
     ),
  Item(
    images: "assets/images/colors/color_brown.png" ,
     jpName: "brown",
     enName: "chairo",
     play: "sounds/colors/brown.wav"
     ),
  Item(
    images: "assets/images/colors/color_dusty_yellow.png" ,
     jpName: "dustyYallow",
     enName: "Ojīsan",
     play: "sounds/colors/dusty_yellow.wav"
     ),
  Item(
    images: "assets/images/colors/color_gray.png" ,
     jpName: "gray",
     enName: "Gurē",
     play: "sounds/colors/gray.wav"
     ),
  Item(
    images: "assets/images/colors/color_green.png" ,
     jpName: "green",
     enName: "Midori",
     play: "sounds/colors/green.wav"
     ),
  Item(
    images: "assets/images/colors/color_red.png" ,
     jpName: "red",
     enName: "Aka",
     play: "sounds/colors/red.wav"
     ),
  Item(
    images: "assets/images/colors/color_white.png" ,
     jpName: "white",
     enName: "Shiro",
     play: "sounds/colors/white.wav"
     ),   
  Item(
    images: "assets/images/colors/yellow.png" ,
     jpName: "yellow",
     enName: "Kiiro",
     play: "sounds/colors/yellow.wav"
     ), 
  
       
  
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Colors"),
        backgroundColor:  Color.fromARGB(255, 86, 42, 0),
      ),
      body:ListView.builder(
        itemCount: Colors.length,
        itemBuilder: (context,index )
        {
          return ListItem(item: Colors[index],color: Color.fromARGB(255, 62, 0, 143),);
        },
      
      ),
    );
  }
}