import 'package:classwork2/Animationsssss/lottieeee.dart';
import 'package:classwork2/atm_card_using_stack.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
void main(){
  runApp(
    MaterialApp(
      home: IntroScreen(),
      debugShowCheckedModeBanner: false,));
}


class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {

    PageDecoration pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w900,fontSize: 48,color: Colors.purple),
        bodyTextStyle: GoogleFonts.aBeeZee(fontStyle: FontStyle.italic,fontSize: 20),
        boxDecoration: BoxDecoration(gradient: LinearGradient(colors: [
          Colors.purple,
          Colors.pinkAccent,
          Colors.pink,
          Colors.white38
        ],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft
        ))
    );

    return IntroductionScreen(
      pages: [
        PageViewModel(
        title: "First Page",
        body: "Introduction screen shows the details of the app and demo of pages",
        image: IntroImage("https://images.unsplash.com/photo-1611880963158-6d9f787ceeb0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80")
      ),
      PageViewModel(
        title: "Second Page",
        body: "Introduction screen shows the details of the app and demo of pages",
        image: IntroImage("https://plus.unsplash.com/premium_photo-1681487669273-10ba4186c998?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDEwfE04alZiTGJUUndzfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60")
      ),
      PageViewModel(
        title: "Third Page",
        body: "Introduction screen shows the details of the app and demo of pages",
        image: IntroImage("https://images.unsplash.com/photo-1688728437359-4ffdecab3ce7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8NnNNVmpUTFNrZVF8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
      ),
      PageViewModel(
        title: "Fourth Page",
        body: "Introduction screen shows the details of the app and demo of pages",
        image: IntroImage("https://plus.unsplash.com/premium_photo-1669842336826-28b52708792a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDF8NnNNVmpUTFNrZVF8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
      ),
      ],
      onDone: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LottieAnim())),
      onSkip: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>StackEx())),
      showSkipButton: true,
      skip: Text("Skip"),
      next: Icon(Icons.arrow_forward_rounded),
      done: Text("Done"),
      dotsDecorator: DotsDecorator(
        size: Size(10,20),
        color: Colors.grey,
        activeSize: Size(25, 12),
        activeColor: Colors.yellow,
        activeShape: RoundedRectangleBorder(
          borderRadius:BorderRadius.all(Radius.circular(20)) 
        )
      ),
    );
  }
  Widget IntroImage(String image){
    return Container(
      height: 700,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover,image: NetworkImage(image))
      ),
    );
  }
}