import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  List <String> names = ["Mohammed" , 'Ahmed','yassen'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Text(names[0]),
          //Text(names[1]),
          //Text(names[2]),
          ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: names.length,
              itemBuilder: (context, index){
              return Text(names[index]);
              }
          ),
        ],
      ),
    );
  }
}
