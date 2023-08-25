import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:toku/components/list_itsem.dart';
import 'package:toku/models/number.dart';

class FamilyPage extends StatelessWidget {
   FamilyPage({super.key});
   
   
final List<Item> family = const [
   Item(
    images: "assets/images/family_members/family_father.png" ,
     jpName: "father",
     enName: "chichi",
     play: "sounds/family_members/father.wav"
     ),
  Item(
    images: "assets/images/family_members/family_daughter.png" ,
     jpName: "daughter",
     enName: "shimai",
     play: "sounds/family_members/daughter.wav"
     ),
  Item(
    images: "assets/images/family_members/family_grandfather.png" ,
     jpName: "grandfather",
     enName: "Ojīsan",
     play: "sounds/family_members/grand_father.wav"
     ),
  Item(
    images: "assets/images/family_members/family_grandmother.png" ,
     jpName: "grandmother",
     enName: "yon",
     play: "sounds/family_members/grand_mother.wav"
     ),
  Item(
    images: "assets/images/family_members/family_mother.png" ,
     jpName: "mother",
     enName: "haha",
     play: "sounds/family_members/mother.wav"
     ),
  Item(
    images: "assets/images/family_members/family_older_brother.png" ,
     jpName: "Roku",
     enName: "Ani",
     play: "sounds/family_members/older_bother.wav"
     ),
  Item(
    images: "assets/images/family_members/family_older_sister.png" ,
     jpName: "older_brother",
     enName: "ane",
     play: "sounds/family_members/older_sister.wav"
     ),   
  Item(
    images: "assets/images/family_members/family_son.png" ,
     jpName: "son",
     enName: "Musuko",
     play: "sounds/family_members/son.wav"
     ), 
  Item(
    images: "assets/images/family_members/family_younger_brother.png" ,
     jpName: "younger_brother",
     enName: "Otōto",
     play: "sounds/family_members/younger_brohter.wav"
     ),
  Item(
    images: "assets/images/family_members/family_younger_sister.png" ,
     jpName: "ju",
     enName: "Imōto",
     play: "sounds/family_members/younger_sister.wav"
     ),   
  
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Family Mempers"),
        backgroundColor:  Color.fromARGB(255, 86, 42, 0),
      ),
      body:ListView.builder(
        itemCount: family.length,
        itemBuilder: (context,index )
        {
          return ListItem(item: family[index],color: Color.fromARGB(255, 67, 127, 3),);
        },
      
      ),
    );
  }
}