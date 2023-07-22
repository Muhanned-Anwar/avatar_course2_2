import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container( // width: double.infinity
          color: Colors.black,
          child: Column( // width: 0 >> max(100, 200, 80, 20) = 200
                      // height: 0 >> sum(200, 300, 100, 400) = 400
            children: [
              Container( // width: 0
                color: Colors.red,
                width: 100,
                height: 200,
              ),
              Container( // width: 0
                color: Colors.green,
                width: 200,
                height: 300,
              ),
              Container( // width: 0
                color: Colors.yellow,
                width: 80,
                height: 100,
              ),
              Container(
                color: Colors.blue,
                width: 20,
                height: 300,
              )
            ],
          ),
        )
      ),
    );
  }
}
