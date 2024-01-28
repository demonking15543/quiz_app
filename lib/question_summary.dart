import 'dart:ffi';

import 'package:flutter/material.dart';


class QuestionSummary extends StatelessWidget{
  const QuestionSummary(this.summaryData, {super.key});
 
 final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          
          children: summaryData.map((data){
            return buildQuestionRow(data);

           
          }).toList(),
        ),
      ),
    );

  }
}




Widget buildQuestionRow(Map<String, dynamic> data) {
  int questionIndex = (data['question_index'] as int) + 1;
  String userAnswer = data['user_answer'] ;
  String correctAnswer = data['correct_answer'];


  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildQuestionIndexText(questionIndex, correctAnswer, userAnswer),
      const SizedBox(width: 8), // Adjust the width as needed for spacing
      Expanded(
        child: buildQuestionDetailsColumn(data),
      ),
    ],
  );
}


Widget buildQuestionIndexText(int index, correctAnswer, userAnswer) {
  bool isCorreact =  correctAnswer == userAnswer? true : false;
  return Container(
    width: 25, // Adjust the width as needed
    height: 25, // Adjust the height as needed'
    decoration: BoxDecoration(
      color: isCorreact ? Colors.green : Colors.red, // Set the background color to green
      shape: BoxShape.circle,
    ),
    child: Center(
      child: Text(
        index.toString(),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}


Widget buildQuestionDetailsColumn(Map<String, dynamic> data) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    
    children: [
      buildQuestionText(data),
      const SizedBox(height: 5),
      buildAnswerText(data['user_answer'], const Color.fromARGB(255, 198, 182, 182)),
      buildAnswerText(data['correct_answer'], const Color.fromARGB(255, 95, 155, 82)),
      const SizedBox(height: 15),
    ],
  );
}

Widget buildQuestionText(Map<String, dynamic> data) {
  return Text(
    data['question'] as String,
    
    style: const TextStyle(
      
      color:  Color.fromARGB(255, 243, 235, 235),
      fontSize: 15,
      fontWeight: FontWeight.bold,
    
      
    ),
  );
}

Widget buildAnswerText(String answer, Color color) {
  return Text(
    answer,
    style: TextStyle(
      color: color,
      fontSize: 15,
      fontWeight: FontWeight.bold,
      
    ),
  );
}

