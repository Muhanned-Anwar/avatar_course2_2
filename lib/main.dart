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
      home: LoginScreen(),
      theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: Color(0xffe8e5e5),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            titleTextStyle: TextStyle(fontSize: 22, color: Colors.black),
          )),
    );
  }
}

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);

  String initPopUpValue = 'profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 4,
        // backgroundColor: Colors.blue,
        title: const Text(
          'Login Screen',
        ),
        leading: const Icon(
          Icons.arrow_back_ios_new,
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('Hello There');
            },
            icon: const Icon(
              Icons.search,
              size: 34,
            ),
          ),
          PopupMenuButton(
            iconSize: 34,
            elevation: 10,
            color: Colors.white70,
            initialValue: initPopUpValue,
            itemBuilder: (context) => const [
              PopupMenuItem(
                child: Text('Profile'),
                value: 'profile',
              ),
              PopupMenuItem(
                value: 'language',
                child: Row(
                  children: [
                    Icon(Icons.person),
                    Text('Language'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'about',
                child: Text('About'),
              ),
            ],
            onSelected: (value){
              initPopUpValue = value;
              print(value);
            },
            onCanceled: (){
              print('Canceled Pop Up');
            },
            onOpened: (){
              print('Open Pop Up');
            },
          ),
        ],
      ),
    );
  }
}
