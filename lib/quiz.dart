import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget{
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{

  Widget activeScreen = StartScreen(switchScreen);
  void switchScreen(){
    setState(() {
      activeScreen = QuestionScreen();
    });
  }

  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color.fromARGB(255, 75, 4, 91),
              const Color.fromARGB(255, 91, 4, 81)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
            )
          ),
          child: activeScreen),
      ),
    );
  }
}