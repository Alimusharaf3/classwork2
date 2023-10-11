import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatelessPage extends StatelessWidget {
  int? phone;
  String name;
  String location;

  StatelessPage({super.key,  this.phone,required this.name,  required this.location });

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Recieved Data"),),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
          style: GoogleFonts.bahiana(fontSize: 30,
          color: Colors.purple),),
          Text(
            location,
            style: GoogleFonts.bahiana(fontSize: 20,
            color: Colors.pinkAccent),),
            Text(
              "$phone",
              style: GoogleFonts.bahiana(fontSize: 10,
              color: Colors.deepPurple),)
        ],),) ,
    );
  }
}