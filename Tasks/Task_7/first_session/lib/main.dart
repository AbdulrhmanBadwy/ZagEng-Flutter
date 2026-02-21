import 'package:first_session/widgets/counter_widget.dart';
import 'package:first_session/widgets/male_femal_widget.dart';
import 'package:first_session/widgets/slider_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI Calculator',
            style: TextStyle(
              color: Color(0xFF87B1E3),
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Wrap(
                  children: [
                    GenderType(type: 'Male', icons: Icons.male),
                    GenderType(type: 'Female', icons: Icons.female),
                  ],
                ),
                SliderWidget(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CounterWidget(title: 'Age'),
                    CounterWidget(title: 'Weight'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF48C8C),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        )
                      ),
                      child: Text('Calculate' , style: TextStyle(color: Colors.white , fontSize: 20),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
