import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:toku/components/list_itsem.dart';
import 'package:toku/models/number.dart';


class phrasesPage extends StatelessWidget {
  const phrasesPage({super.key});
  final List<Item> phrases = const [
    
            
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phrses"),
        backgroundColor: Color.fromARGB(255, 86, 42, 0),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return ListItem(item: phrases[index], color: Color.fromARGB(255, 2, 63, 168),);
        },
      ),
    );
  }
}
