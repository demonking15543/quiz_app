import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

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
            return Row(
              
              children: [
              Text(((data['question_index'] as int) + 1).toString(), style: GoogleFonts.lato(color: const Color.fromARGB(255, 243, 235, 235), fontSize: 15, fontWeight: FontWeight.bold),),
              Expanded(

                
                child: Column(
                

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(data['question'] as String, style: GoogleFonts.lato(color: const Color.fromARGB(255, 243, 235, 235), fontSize: 15, fontWeight: FontWeight.bold,),),
                     const SizedBox(height: 5,),
                    Text(data['user_answer'] as String, style: GoogleFonts.lato(color:const  Color.fromARGB(255, 198, 182, 182), fontSize: 15, fontWeight: FontWeight.bold),),
                    Text(data['correct_answer'] as String,  style: GoogleFonts.lato(color: const Color.fromARGB(255, 95, 155, 82), fontSize: 15, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 15,),

                ],),
              )
            ],);
          }).toList(),
        ),
      ),
    );

  }
}