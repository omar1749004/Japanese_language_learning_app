
import 'package:flutter/material.dart';
import 'package:toku/screens/colors.dart';
import 'package:toku/screens/family_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrasesPage.dart';
import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:const Color.fromARGB(255, 214, 197, 197),
       appBar: AppBar(backgroundColor:const Color.fromARGB(255, 80, 42, 1),
       title: const Text("Toko App"),
       ),
       body: Column(
        children: [
          Category(
            text: "Number",
            color:const Color.fromARGB(255, 168, 82, 2),
            ontap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)
             {
                return const NumbersPage();
             }));
            },
          ),
          Category(
            text:"Family Member",
            color:const Color.fromARGB(255, 67, 127, 3),
            ontap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
              {
                  return  FamilyPage();
              }));
            }

          ),
          Category(
            text: "Colors",
            color:const Color.fromARGB(255, 62, 0, 143),
            ontap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
              {
                  return  Colorss();
              }));
            }
          ),
          Category(
            text: "Phrases",
            color:const Color.fromARGB(255, 2, 63, 168),
            ontap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
              {
                  return const phrasesPage();
              }));
            }
          ),
        ],
       ),
      );
  }
}