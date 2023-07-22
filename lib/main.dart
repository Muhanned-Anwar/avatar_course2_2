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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container( // width: 0
              color: Colors.red,
              width: 300,
              height: 200,
            ),
            Container( // width: 0
              color: Colors.green,
              width: 300,
              height: 200,
            ),
            Container( // width: 0
              color: Colors.blue,
              width: 300,
              height: 200,
            ),
          ],
        )
      ),
    );
  }
}
