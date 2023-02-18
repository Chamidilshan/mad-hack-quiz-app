import 'package:flutter/material.dart';
import 'package:mad_hack_quiz/screens/trivia_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(20.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Icon(Icons.quiz),
                  Text('Mad Hack',
                    style: TextStyle(
                        fontSize: 34,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
          ),
          TextButton(onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => TraciaScreen()));
          },
              style: TextButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
                padding: EdgeInsets.all(20.0)
              ),
              child: Text(
                'Start quiz'
              )
          ),
          SizedBox(
            height: 20.0,
          ),
          TextButton(onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  padding: EdgeInsets.all(20.0)
              ),
              child: Text(
                  'Start quiz'
              )
          ),
        ],
      ),
    );
  }
}
