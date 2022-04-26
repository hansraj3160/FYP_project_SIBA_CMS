import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final List<String> itemsName = ["Profile", "Course", "Attendance", "Result"];
  final List<String> imagespath = [
    "assets/images/iba_logo.png",
    "assets/images/profile.jpg",
    "assets/images/course.png",
    "assets/images/result.png"
  ];

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white60,
        body: GridView.count(
            crossAxisCount: 2,
            children: List.generate(4, (index) {
              return Card(
                  elevation: 50,
                  shadowColor: const Color.fromARGB(255, 197, 194, 194),
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(children: [
                          Image.asset(imagespath[index],
                              width: 100, height: 100),
                          Text(
                            'Text ' + itemsName[index],
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ])),
                  ));
            })));
  }
}
