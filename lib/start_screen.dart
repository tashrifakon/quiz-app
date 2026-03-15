import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.StartQuiz,{super.key});
  final void Function() StartQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(115, 251, 250, 249),
          ),
          const SizedBox(height: 50),
          const Text(
            "Learn Flutter Fun Way!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          const SizedBox(height: 50),
          ElevatedButton.icon(
            onPressed: StartQuiz,
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 91, 4, 81),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}