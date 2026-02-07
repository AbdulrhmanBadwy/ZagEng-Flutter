import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double sliderValue = 170 ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product Gallery', style: TextStyle(color: Colors.white)),
          backgroundColor: Color(0xFF2196F3),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  Container(
                    alignment: AlignmentDirectional.center,
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red,
                    ),
                    child: Text('3', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40 , vertical: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                    'assets/images/headphone.jpg',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Text Under Photo
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16 , vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Wireless HeadPhones',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                        'High-quality sound with noise cancellation.',
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    )
                  ],
                )
            ),
            // Slider
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Row(
                   children: [
                     Text(
                       'Price: ',
                       style: TextStyle(
                        fontSize: 16,
                         color: Colors.black54,
                         fontWeight: FontWeight.w100,
                       ),
                     ),
                     Text(
                       '\$99',
                       style: TextStyle(
                         fontWeight: FontWeight.w900,
                         color: Colors.black,
                         fontSize: 16,
                       ),
                     ),
                   ],
                 ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 4,
                      activeTrackColor: Colors.blue,
                      inactiveTrackColor: Colors.grey.shade600,
                      thumbColor: Colors.white,
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 7,
                      ),
                      overlayShape: SliderComponentShape.noOverlay,
                    ),
                    child: Slider(
                      value: sliderValue,
                      min: 50,
                      max: 200,
                      onChanged: (value) {
                        setState(() {
                          sliderValue = value;
                        });
                      },
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('50', style: TextStyle(color: Colors.black54)),
                        Text('200', style: TextStyle(color: Colors.black54)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Buttons
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                spacing: 10,
                children: [
                  MaterialButton(
                    onPressed: (){},
                    color: Color(0xFFFFFFFF),
                    child: Icon(Icons.favorite , color: Colors.red,),
                  ),
                  MaterialButton(
                    onPressed: (){},
                    minWidth: 150,
                    color: Color(0xFF2196F3),
                    child: Text(
                        'Add to Cart',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: (){},
                    color: Color(0xFFFFFFFF),
                    child: Text('Reset'),
                  ),
                  

                ],
              ),
            ),
            // Tags
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50 , vertical: 7),
              child: Row(
                spacing: 7,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 2),
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF2196F3),
                    ),
                    child: Text(
                      'New' ,
                      style: TextStyle(
                        color:  Colors.white,
                        fontSize: 15
                      ),
                    ),

                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 2),
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF57C00),
                    ),
                    child: Text(
                      'Discount' ,
                      style: TextStyle(
                        color:  Colors.white,
                        fontSize: 15
                      ),
                    ),

                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 2),
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                    child: Text(
                      'Hot' ,
                      style: TextStyle(
                        color:  Colors.white,
                        fontSize: 15
                      ),
                    ),

                  ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 2),
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade700
                    ,
                  ),
                  child: Text(
                    'Popular' ,
                    style: TextStyle(
                      color:  Colors.white,
                      fontSize: 15
                    ),
                  ),

                ),

                ],
              ),
            ),
            // Cards

            Container(
              margin: EdgeInsets.symmetric(horizontal: 16 , vertical: 4),
              padding: EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5,
                  ),

                ]
              ),
              width: 350,
              height: 70,
              child: Row(
                children: [
                  Image.asset('assets/images/smartwatch.jpg'),
                  Text('Smartwatch',style: TextStyle(fontSize: 17),),
                  SizedBox(width: 90,),
                  MaterialButton(
                    onPressed: (){},
                    color: Color(0xFF2196F3),
                    child: Text('Buy', style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16 , vertical: 4),
              padding: EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5,
                  ),

                ]
              ),
              width: 350,
              height: 70,
              child: Row(
                children: [
                  Image.asset('assets/images/camera.jpg'),
                  Text('Digital Camera',style: TextStyle(fontSize: 17),),
                  SizedBox(width: 70,),
                  MaterialButton(
                    onPressed: (){},
                    color: Color(0xFF2196F3),
                    child: Text('Buy' , style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16 , vertical: 4),
              padding: EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5,
                  ),

                ]
              ),
              width: 350,
              height: 70,
              child: Row(
                children: [
                  Image.asset('assets/images/smartwatch.jpg'),
                  Text('Smartwatch',style: TextStyle(fontSize: 17),),
                  SizedBox(width: 90,),
                  MaterialButton(
                    onPressed: (){},
                    color: Color(0xFF2196F3),
                    child: Text('Buy', style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
