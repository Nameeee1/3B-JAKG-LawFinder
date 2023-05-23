import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:mainpage/viewpage.dart';
import 'package:mainpage/viewpage2.dart';
import 'package:mainpage/viewpage3.dart';
import 'package:mainpage/viewpage4.dart';
import 'package:mainpage/viewpage5.dart';
import 'package:mainpage/viewpage6.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50)
              )
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 30),
                  title: Text('Hi Welcome to Law Finder', style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.white
                  )),
                  subtitle: Text('Good Morning', style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.white
                  )),
                  trailing: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/logo.png'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100)
                )
              ),
              child: GridView.count(
                shrinkWrap: true,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const PostScreen()));
                    }, child: Text('Republic Act 9501', style: TextStyle(color: Colors.black, fontSize: 16))),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const PostScreen2()));
                    }, child: Text('Republic Act 9262', style: TextStyle(color: Colors.black, fontSize: 16))),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const PostScreen3()));
                    }, child: Text('Republic Act 9208', style: TextStyle(color: Colors.black, fontSize: 16))),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const PostScreen4()));
                    }, child: Text('Republic Act 8353', style: TextStyle(color: Colors.black, fontSize: 16))),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const PostScreen5()));
                    }, child: Text('Republic Act 8505', style: TextStyle(color: Colors.black, fontSize: 16))),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const PostScreen6()));
                    }, child: Text('Republic Act 8533', style: TextStyle(color: Colors.black, fontSize: 16))),
                  ],
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.deepPurple,
        color: Colors.deepPurple.shade200,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index){
          print(index);
        },
        items: [
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.favorite, color: Colors.white),
          Icon(Icons.settings, color: Colors.white),
        ],
      ),
    );

  }
  itemDashboard(String title, IconData iconData, Color background) => Container(
  decoration: BoxDecoration(
  color: Colors.transparent,
  borderRadius: BorderRadius.circular(10),
  boxShadow: [
  BoxShadow(
  offset: const Offset(0, 5),
  color: Theme.of(context).primaryColor.withOpacity(.2),
  spreadRadius: 2,
  blurRadius: 5
  )
  ]
  ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: background,
              shape: BoxShape.circle
          ),
          child: Icon(iconData, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(title, style: Theme.of(context).textTheme.titleMedium)
      ],
    ),
  );
}


