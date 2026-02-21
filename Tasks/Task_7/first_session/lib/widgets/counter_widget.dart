import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  final String title;
  const CounterWidget({super.key, required this.title});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF87B1E3),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(widget.title, style: TextStyle(color: Colors.white , fontSize: 25)),
            Text("$counter", style: TextStyle(color: Colors.white , fontSize: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF48C8C),
                    borderRadius: BorderRadius.circular(15)

                  ),
                  width: 40,
                  height: 40,
                  child: IconButton(icon: Icon(Icons.add), color: Colors.white , onPressed: (){
                    setState(() {
                      counter++;
                    });
                  },),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF48C8C),
                    borderRadius: BorderRadius.circular(15)

                  ),
                  width: 40,
                  height: 40,
                  child: IconButton(icon: Icon(Icons.remove), color: Colors.white , onPressed: (){
                    setState(() {
                      if(counter>0)
                        {
                          counter--;

                        }
                    });
                  },),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
