
import 'package:classwork2/passing_data%20between%20screens/using_navigator/dummy_data.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: ProductHome(),
    
    
  ));
}

class ProductHome extends StatelessWidget {
  const ProductHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shop Now"), ),
      body: ListView(
        children: products.map((productonebyone) => Card(
            child: ListTile(
              leading: Container(
                height: 150,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(productonebyone["image1"])
                )),
                ),
              title: Text(productonebyone["name"]),
              subtitle: Text("${productonebyone["price"]}"),
              onTap: (){
                gotoNextPage(context,productonebyone["id"]);
              },
            ),
        
        )).toList(),
      ),
    );
  }
  void gotoNextPage(BuildContext context,productId){
    Navigator.pushNamed(context, "details,arguments:productId");
  }
}