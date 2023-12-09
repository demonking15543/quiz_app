import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  const StartScreen({super.key});

  @override  
  Widget build(context){
    return  Center(child:  Column(
      mainAxisSize: MainAxisSize.min,
      children: [

         Opacity(opacity: 0.7, child:Image.asset("assets/images/logo.png", width: 200,),
),
     const SizedBox(height:18),
     const  Text("Learn flutter in fun way", style: TextStyle(color: Colors.white, fontSize: 20),),
          const SizedBox(height:30),
          OutlinedButton.icon(
            onPressed: (){},
            icon: const Icon(Icons.arrow_right_alt),
            
            style:OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label:const  Text("Start Quiz"),)

    ],));
  }
}