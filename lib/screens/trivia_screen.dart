import 'package:flutter/material.dart';

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
            return  Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white
                ),
                child: Text('Quiz'),
              ),
            );
          },
        itemCount: 5,
          )
    );
  }
}
