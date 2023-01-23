
import 'package:brozoapp/chat.dart';
import 'package:brozoapp/newOrder.dart';
import 'package:brozoapp/order.dart';
import 'package:brozoapp/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
 
  final List<Widget>_children=[
  order(),
  newOrder(),
  chat(),
  profile(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
          type: BottomNavigationBarType.fixed,
          items:  [
            BottomNavigationBarItem(icon: Icon(Icons.folder), label: "Orders"),
            BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline_outlined), label: "New Order"),
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_rounded), label: "Chat"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
          
        ),
      
    ),
    );
  }
}