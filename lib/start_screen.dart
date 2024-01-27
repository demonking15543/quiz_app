import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.startQuiz, {super.key});
  final void Function()  startQuiz;
  @override  
  Widget build(context){
    return  Center(child:  Column(
      mainAxisSize: MainAxisSize.min,
      children: [

//           Opacity(opacity: 0.7, child:Image.asset("assets/images/logo.png", width: 200,)

// ),
Image.asset("assets/images/logo.png", width: 200),
     const SizedBox(height:18),
       Text("Learn flutter in fun way", 
       style: GoogleFonts.lato(color: const Color.fromARGB(255, 237, 223, 252), 
       fontSize: 24),),
          const SizedBox(height:30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt),
            
            style:OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label:const  Text("Start Quiz"),)

    ],));
  }
}