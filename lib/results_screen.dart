import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResultsScreen extends StatelessWidget{
 const ResultsScreen({super.key, required this.choosenAnswers, required this.restartTest});
 final List<String> choosenAnswers;

 final void Function() restartTest;
 List <Map<String, Object>> getSummaryData(){
 final List<Map<String, Object>> summary=[];
for(var i=0; i < choosenAnswers.length; i++){
summary.add({
  'question_index': i,
  'question':questions[i].text,
  'correct_answer':questions[i].answers[0],
  'user_answer': choosenAnswers[i]

});
}
 return summary;

 } 
  @override
  Widget build(BuildContext context){
    final summaryData = getSummaryData();
   final numTotalQuestion = questions.length;
   final numCorrectAnswers=summaryData.where((data){
    return data['correct_answer'] == data['user_answer'];
   }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
              Text("You answered $numCorrectAnswers out of $numTotalQuestion questions correctly!", style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color:const Color.fromARGB(255, 234, 188, 36),
                
              ), textAlign: TextAlign.center,),
                       const SizedBox(height: 30,),

                        QuestionSummary(summaryData),
                        
                        OutlinedButton.icon(onPressed: restartTest , icon: const Icon(Icons.refresh_outlined), label: const Text('Restart Quiz!'),
                        style: OutlinedButton.styleFrom(foregroundColor: Color.fromARGB(255, 186, 180, 180)))

          ]
        ,),
      ),
    );

  }
}