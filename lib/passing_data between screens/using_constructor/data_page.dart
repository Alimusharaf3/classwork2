import 'package:classwork2/passing_data%20between%20screens/using_constructor/to_stateful_page.dart';
import 'package:classwork2/passing_data%20between%20screens/using_constructor/to_stateless_page.dart';
import 'package:flutter/material.dart';
void main(){runApp(MaterialApp(home: DataPage(),
));}

class DataPage extends StatelessWidget {
  const DataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Passing Data between  Screens Using Constructor"),
      ),
      body: Container(
        alignment: Alignment.center,
        height: 250,
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
             Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=>StatelessPage(name:"Luminar",location:"kakkanad",phone:987654321) ));
            },
             child: Text("To Stateless PAge")),
             ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder:(context)=>StatefulPage(name: "Luminar", location: "kakkanad") ));
             },
              child: Text("To Stateful Page"))
          ],),
      ),
      );
  }
}