import 'package:flutter/material.dart';
import 'package:mad_hack_quiz/widgets/question_details.dart';

class TraciaScreen extends StatefulWidget {
  const TraciaScreen({Key? key}) : super(key: key);

  @override
  State<TraciaScreen> createState() => _TraciaScreenState();
}

class _TraciaScreenState extends State<TraciaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quizes'
        ),
      ),
      backgroundColor: Colors.blue,
      body: ListView.builder(
          itemBuilder: (context, index){
            return  QuestionDetail();
          },
        itemCount: 10,
          )
    );
  }
}

