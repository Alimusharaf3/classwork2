import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: Expandeddd(),
  ));
}

class Expandeddd extends StatelessWidget {
  const Expandeddd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expanded"),),
      body:Column(
        children: [
          Image.asset("assets/images/bag.jpg"),
          Image.asset("assets/images/milena-trifonova-pHqt1DsHCx0-unsplash.jpg"),
          Image.asset("assets/images/annie-williams-FlP6C5pkMKs-unsplash.jpg")
        ],
      )
    );
  }
}