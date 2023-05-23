import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:mainpage/bottomnav.dart';
import 'package:mainpage/bottomnav2.dart';
import 'package:mainpage/bottomnav4.dart';
import 'package:mainpage/post_app_bar.dart';
import 'package:mainpage/post_app_bar2.dart';
import 'package:mainpage/post_app_bar4.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
  ));
  runApp(PostScreen4());
}

class PostScreen4 extends StatelessWidget {
  const PostScreen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg1.jpg'),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: PostAppBar4(),
        ),
        bottomNavigationBar: PostBottomBar4(),
      ),
    );
  }
}





