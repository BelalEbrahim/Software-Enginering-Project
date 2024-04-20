// ignore_for_file: prefer_const_constructors
import 'package:os_project/Page/account.dart';
import 'package:os_project/Page/home.dart';
import 'package:os_project/Page/mylearning.dart';
// ignore: unused_import
import 'package:os_project/Page/search.dart';
// ignore: unused_import
import 'package:os_project/Page/wishlist.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';


class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentindex = 0;
  //ignore: prefer_final_fields, unused_field
  List<Widget> _screens = <Widget>[
    Home(),
    Wishlist(),
    MyLearning(),
    Search(),
    //SearchPage(),
    Account()
  ];

   changeindex(int value) {
    // ignore: avoid_print
    print(value);
    setState(() {
      currentindex = value;
    });
    }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _screens.elementAt(currentindex),
      bottomNavigationBar: ConvexAppBar(items: const [
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.favorite , title: 'Wishlist'),
        TabItem(icon: Icons.play_circle , title: 'My Study'),
        TabItem(icon: Icons.search , title: 'Search'),
        TabItem(icon: Icons.account_circle , title: 'Account'),
      ],
      activeColor: Colors.white,
      elevation: 3,
      color: Colors.white70,
      height: 60,
      style:TabStyle.reactCircle ,
      backgroundColor: const Color.fromRGBO(8, 176, 158, 1),
      initialActiveIndex: currentindex,
      onTap: changeindex,
      )
          
      
    );
  }
  
 
}