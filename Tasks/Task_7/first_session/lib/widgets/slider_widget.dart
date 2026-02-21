import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double sliderValue = 0 ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF87B1E3),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text('Height' , style: TextStyle(color: Colors.white , fontSize: 20),),
            Text(sliderValue.toStringAsFixed(1) , style: TextStyle(color: Colors.white , fontSize: 20) ,),
            Slider(
                value: sliderValue,
                onChanged: (value){
                  setState(() {
                    sliderValue =value;
                  });
                } ,
              min: 0,
              max: 300,
              activeColor: Color(0xFFF48C8C),
            )
          ],
        ),
      ),
    );
  }
}
