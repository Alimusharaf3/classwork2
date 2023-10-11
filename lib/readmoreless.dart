import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
void main(){
  runApp(
    MaterialApp(
      home: ReadMoreLess(),
    )
  );
}
class ReadMoreLess extends StatelessWidget {
  const ReadMoreLess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Read More Read Less"),
      ),
      body: const Column(
        children: [
          ReadMoreText("Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase",
          trimLines: 2,
          preDataText: "AMANADA",
          preDataTextStyle: TextStyle(fontWeight: FontWeight.w900),
          style: TextStyle(color: Colors.deepPurple),
          trimMode: TrimMode.Line, 
          trimCollapsedText: "...........collapse",
          trimExpandedText: "...........expand",
          ),
          /*Divider(),
          ReadMoreText("Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase",
          trimLines: 2,
          preDataText: "Flutter",
          preDataTextStyle: TextStyle(fontWeight: FontWeight.w900),
          style: TextStyle(color: Colors.deepPurple),
          trimMode: TrimMode.Line,
          )*/
          
        ],
      ),
    );
  }
}