import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(
    home: Stag_Grid(),
  ));
}

class Stag_Grid extends StatelessWidget {
  const Stag_Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Staggered Gridview"),),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 4,
             mainAxisCellCount: 2, child:Container(
              color: Colors.green,
              child: Center(child: Icon(Icons.add),),
             ) ),
             StaggeredGridTile.count(
            crossAxisCellCount: 4,
             mainAxisCellCount: 2, child:Container(
              color: Color.fromARGB(255, 119, 76, 175),
              child: Center(child: Icon(Icons.mic),),
             ) ),
             StaggeredGridTile.count(
            crossAxisCellCount: 4,
             mainAxisCellCount: 2, child:Container(
              color: Colors.red,
              child: Center(child: Icon(Icons.gamepad),),
             ) ),
             StaggeredGridTile.count(
            crossAxisCellCount: 4,
             mainAxisCellCount: 2, child:Container(
              color: Colors.blue,
              child: Center(child: Icon(Icons.radio),),
             ) ),
        ],),
      ),
    );
  }
}