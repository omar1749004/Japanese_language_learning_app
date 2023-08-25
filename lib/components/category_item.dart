import 'package:flutter/material.dart';
class Category extends StatelessWidget {
   Category({this.text,this.color,this.ontap});
  final String? text ;
  final Color? color;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
                padding:const EdgeInsets.only(left: 16),
                color: color,
                alignment: Alignment.centerLeft,
                width: double.infinity,
                height: 55,
                child: Text(text!,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white
                ),
                ),
      ),
    );
    
  }
}