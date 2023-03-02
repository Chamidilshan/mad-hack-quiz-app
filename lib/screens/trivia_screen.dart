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
                height: 280.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('The data or an instruction given to a computer system is '
                          'particularly called:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 40.0,
                      padding: EdgeInsets.only(left: 25.0, right: 25.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: TextButton(
                          onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                          child: Text('Input',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 40.0,
                      padding: EdgeInsets.only(left: 25.0, right: 25.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        child: Text('Output',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 40.0,
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 25.0, right: 25.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        child: Text('Entry',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 40.0,
                      padding: EdgeInsets.only(left: 25.0, right: 25.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        child: Text('Information',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            );
          },
        itemCount: 10,
          )
    );
  }
}
