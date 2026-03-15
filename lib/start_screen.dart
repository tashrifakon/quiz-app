import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.StartQuiz, {super.key});
  final void Function() StartQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("Learn Flutter Fun Way!"),
          ElevatedButton.icon(
            onPressed: StartQuiz,
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
