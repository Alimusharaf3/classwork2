import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: BottomNavBar(),));
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
   
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Nav Bar"),),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.purple,selectedItemColor: Colors.yellow,
        
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home)),
        BottomNavigationBarItem(
          icon: Icon(Icons.search)),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle)),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle)),
      ]
      ),
    );
  }
}