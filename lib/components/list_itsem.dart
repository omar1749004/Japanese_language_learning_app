import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../models/number.dart';
import '../models/phrese.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key,
  required this.item,
  required this.color
  });
   final Item item;
   final Color color;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          height: 80,
          color: color,
          child: Row(children: [
            Container(color:const Color.fromARGB(255, 232, 224, 203),
              child: Image.asset(item.images)),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center
                ,children: [
                Text(item.jpName,style:const TextStyle(color: Colors.white,height: 3),),
                Text(item.enName,style:const TextStyle(color: Colors.white),)
              ],),
            ),
            const Spacer(
                flex:  1,
              ),
              IconButton(
                icon:const Icon(
                  Icons.play_arrow,
                  size: 30,
                  color: Colors.white,
                ),
                 onPressed: ()
                 async
                { 
                  try
                  {
                     final player =AudioPlayer();
                     await player.play(AssetSource(item.play));
                  }catch(ex)
                  {
                    print(ex);
                  }
                  
                }
                
              )
          ]),
          
        ),
        
      ],
    );
  }
}
class PhrseItem extends StatelessWidget {
  const PhrseItem({super.key,
  required this.color,
  required this.phrase
  });
  final Phrases phrase;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 80,
      color: color,
      child: Row(children: [
        
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center
            ,children: [
            Text(phrase.jpName,style:const TextStyle(color: Colors.white),),
            Text(phrase.enName,style:const TextStyle(color: Colors.white),)
          ],),
        ),
        const Spacer(
            flex:  1,
          ),
          IconButton(
            icon:const Icon(
              Icons.play_arrow,
              size: 30,
              color: Colors.white,
            ),
             onPressed: ()
             async
            { 
              try
              {
                 final player =AudioPlayer();
                 await player.play(AssetSource(phrase.play));
              }catch(ex)
              {
                print(ex);
              }
              
            }
            
          )
      ]),

    );
  }
}