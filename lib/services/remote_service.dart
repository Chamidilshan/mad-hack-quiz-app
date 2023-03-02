import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mad_hack_quiz/models/questions.dart';

class RemoteService {
  Future<List<Question>> getQuestions() async {
    var client = http.Client();
    var uri =
    Uri.parse('https://us-central1-madhacktrivia.cloudfunctions.net/app/questions');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      List tempList = (json.decode(response.body)['data']) as List;
      print(response.body);
      return tempList
          .map(
            (e) => Question(
          e['id'],
          e['question'],
          e['answer_a'],
          e['answer_b'],
          e['answer_c'],
          e['answer_d'],
          e['correct_answer'],
        ),
      )
          .toList();
    } else {
      return [];
    }
  }
}
