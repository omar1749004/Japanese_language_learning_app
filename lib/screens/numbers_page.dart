
import 'package:flutter/material.dart';

import '../components/list_itsem.dart';
import '../models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
final List<Item> number=const [
  Item(
    images: "assets/images/numbers/number_one.png" ,
     jpName: "Ichi",
     enName: "one",
     play: "sounds/numbers/number_one_sound.mp3"
     ),
  Item(
    images: "assets/images/numbers/number_two.png" ,
     jpName: "Ni",
     enName: "tow",
     play: "sounds/numbers/number_two_sound.mp3"
     ),
  Item(
    images: "assets/images/numbers/number_three.png" ,
     jpName: "San",
     enName: "three",
     play: "sounds/numbers/number_three_sound.mp3"
     ),
  Item(
    images: "assets/images/numbers/number_four.png" ,
     jpName: "Shi",
     enName: "four",
     play: "sounds/numbers/number_four_sound.mp3"
     ),
  Item(
    images: "assets/images/numbers/number_five.png" ,
     jpName: "Go",
     enName: "five",
     play: "sounds/numbers/number_five_sound.mp3"
     ),
  Item(
    images: "assets/images/numbers/number_six.png" ,
     jpName: "Roku",
     enName: "six",
     play: "sounds/numbers/number_six_sound.mp3"
     ),
  Item(
    images: "assets/images/numbers/number_seven.png" ,
     jpName: "Shi",
     enName: "seven",
     play: "sounds/numbers/number_seven_sound.mp3"
     ),   
  Item(
    images: "assets/images/numbers/number_eight.png" ,
     jpName: "Hichi",
     enName: "eight",
     play: "sounds/numbers/number_eight_sound.mp3"
     ), 
  Item(
    images: "assets/images/numbers/number_nine.png" ,
     jpName: "kyu",
     enName: "nine",
     play: "sounds/numbers/number_nine_sound.mp3"
     ),
  Item(
    images: "assets/images/numbers/number_ten.png" ,
     jpName: "ju",
     enName: "ten",
     play: "sounds/numbers/number_ten_sound.mp3"
     ),   
  

  
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 86, 42, 0),
        title: Text("Number"),
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context,index )
        {
          return ListItem(item: number[index],color: Color.fromARGB(255, 168, 82, 2),);
        },
        
        
        ),
      );
  }
List<Widget> getList (List<Item> numbers)
{
   const List<ListItem> N2 =[];
   for(int i=0;i<number.length;i++)
   {
    N2.add(ListItem(item: number[i],color: Color.fromARGB(255, 168, 82, 2)));

   }
   return N2;
}
}



