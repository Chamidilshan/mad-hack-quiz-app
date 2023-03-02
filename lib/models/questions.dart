import 'package:flutter/material.dart';

// To parse this JSON data, do
//
//     final question = questionFromJson(jsonString);

import 'dart:convert';

Question questionFromJson(String str) => Question.fromJson(json.decode(str));

String questionToJson(Question data) => json.encode(data.toJson());

class Question {
  Question({
    required this.status,
    required this.data,
  });

  String status;
  List<Datum> data;

  factory Question.fromJson(Map<String, dynamic> json) => Question(
    status: json["status"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    required this.id,
    required this.question,
    required this.answerC,
    required this.answerA,
    required this.answerB,
    required this.answerD,
    required this.correctAnswer,
  });

  int id;
  String question;
  String answerC;
  String answerA;
  String answerB;
  String answerD;
  String correctAnswer;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    question: json["question"],
    answerC: json["answer_c"],
    answerA: json["answer_a"],
    answerB: json["answer_b"],
    answerD: json["answer_d"],
    correctAnswer: json["correct_answer"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "question": question,
    "answer_c": answerC,
    "answer_a": answerA,
    "answer_b": answerB,
    "answer_d": answerD,
    "correct_answer": correctAnswer,
  };
}
