import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
class QuestionsScreen extends StatefulWidget {
const QuestionsScreen({super.key});
@override
 State<QuestionsScreen> createState(){
return _QuestionsScreen();
 }
}



class _QuestionsScreen extends State<QuestionsScreen>{
@override
  Widget build(context) {
    final currentQuestions = questions[0];

    return SizedBox(
      width: double.infinity,

      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestions.text,
           style: const TextStyle(
            color: Colors.white
           ),
           textAlign: TextAlign.center,),
           const SizedBox(height: 30),
      
      
           ...currentQuestions.answers.map((answer){
            return AnswerButton(answerText: answer, onTap: (){});
           }
           )
         
      
          
      
          
               ],
          
        ),
      ),
    );

  }
}