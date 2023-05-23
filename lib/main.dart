import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mainpage/homepage.dart';
import 'package:mainpage/splashScreen.dart';
import 'bottomnav.dart';


void  main(){
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent
  ));
  runApp(homePage());
}


class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePage();
}

class _homePage extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashScreen(
      ),
    );
  }
}








