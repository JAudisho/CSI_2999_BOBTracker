import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'name.dart';
void main() => runApp(const MaterialApp(
    home: Slider()
));
class Slider extends StatelessWidget {
  const Slider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  List itemColors = [Colors.green, Colors.purple, Colors.blue];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Welcome to Bob Tracker!"),),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: CarouselSlider(
                    items: [
                      for (int i = 0; i < itemColors.length; i++)
                        Container(
                          alignment: Alignment.center,
                          margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                          decoration: BoxDecoration(
                              color: itemColors[i],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 2,
                                    blurRadius: 8,
                                    offset: Offset(4, 4))
                              ]),
                          child: Text(
                            'Carousel Slider item ${i + 1}',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        )
                    ],
                    options: CarouselOptions(
                        onPageChanged: (index, reason) {
                          setState(() {
                            print(reason.toString());
                            currentIndex = index;
                          });
                        },
                        autoPlay: true),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < itemColors.length; i++)
                      Container(
                          height: 13,
                          width: 13,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: currentIndex == i ? Colors.blue : Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                    offset: Offset(2, 2))
                              ]),
                      )],
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: const Text('next!'),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Intro()),
              );
            },
          ),
        )

    );

  }
}