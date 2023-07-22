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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container( // width: 0
                color: Colors.red,
                width: 50,
                height: 100,
              ),
              Container( // width: 0
                color: Colors.green,
                width: 200,
                height: 300,
              ),
              Container( // width: 0
                color: Colors.blue,
                width: 100,
                height: 300,
              ),
            ],
          ),
        )
      ),
    );
  }
}
