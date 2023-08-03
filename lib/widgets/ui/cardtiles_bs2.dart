

import 'package:flutter/material.dart';

class CardTileWithIcons extends StatelessWidget {
  final IconData leftIcon;
  final IconData rightIcon;
  final String title;

  CardTileWithIcons({
    required this.leftIcon,
    required this.rightIcon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.sizeOf(context).height;
    var width= MediaQuery.sizeOf(context).width;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Adjust the circular border radius as needed
      ),
      color: const Color(0xffC3F2CB),
      child: Container(
        alignment: Alignment.center,
        height: height*0.08,
        child: ListTile(
          leading: Icon(leftIcon),
          title: Text(title,style:const TextStyle(fontSize: 18),),
          trailing: Icon(rightIcon),
        ),
      ),
    );
  }
}