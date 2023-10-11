import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridview4(),
  ));
}

class Gridview4 extends StatelessWidget {
  const Gridview4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10),
       childrenDelegate: SliverChildListDelegate(
        List.generate(6, (index) => Padding(
          padding: 
       EdgeInsets.all(5.0),
       child: Column(mainAxisAlignment: MainAxisAlignment.center,
       children: [Container(
       // child: Image.asset("assets/images/bag.jpg"),
       //decoration: BoxDecoration(image: AssetImage(assetName)),
        
       ),
      
        
       ],)
       )))
      
         ),
    );
  }
  
 
}