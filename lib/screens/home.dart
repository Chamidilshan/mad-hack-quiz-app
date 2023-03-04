import 'package:flutter/material.dart';
import 'package:mad_hack_quiz/screens/trivia_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF05A8E1),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(20.0),
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Column(
                  children: [
                    Image(image: AssetImage('images/logo.png')),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('MadHack Trivia',
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
          ),
          TextButton(onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => TraciaScreen()));
          },
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFF0B4A93),
                padding: EdgeInsets.all(20.0)
              ),
              child: Text(
                'Start Trivia',
                style: TextStyle(
                  color: Colors.white
                ),
              )
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
