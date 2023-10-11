import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(
    home: LottieAnim(),
  ));
}
class LottieAnim extends StatelessWidget {
  const LottieAnim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lottie"),),
      body:ListView(
        children: [Lottie.asset("assets/animations/animation_ll3huovl (1).json")],
      )
    );
  }
}