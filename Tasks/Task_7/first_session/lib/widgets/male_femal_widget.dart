import 'package:flutter/material.dart';

class GenderType extends StatelessWidget {
  final String type;
  final IconData icons;
  const GenderType({super.key , required this.type, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      color: Color(0xFF87B1E3),
      ),
      margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(icons , size: 60 , color: Colors.white,),
          Text(type , style: TextStyle(color: Colors.white,fontSize: 20),),
        ],
      ),
    );
  }
}
