import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stateless widget statless shortcut to get the full widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch, // stretchs the child to make max width
            //crossAxisAlignment: CrossAxisAlignment.end, //  this does not do anything if all child have same width
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,//space evenly between childs
            //mainAxisAlignment: MainAxisAlignment.center, // to align the childs
            // verticalDirection: VerticalDirection.up, // inverts the vertical direction of the column
            //mainAxisSize: MainAxisSize.min, // makes the widget take  only the size needed
            children: [
              Container(
                height: 100.0,
                width: 100.0,
                //margin: const EdgeInsets.all(100.0), // to position parent
                // padding: const EdgeInsets.all(20.0), // to position the child
                color: Colors.white,
                child: const Text("hello"),
              ),
              const SizedBox(
                // to have a space between childs of column
                height: 10.0,
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.red,
                child: const Text("hello 2"),
              ),

              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.blue,
                child: const Text("hello 3"),
              ),
              // to align column vertically we can use invivisble container
              Container(
                width: double
                    .infinity, //  this makes the container to take the width as wide as screen allows
              )
            ],
          ),
        ),
      ),
    );
  }
}
