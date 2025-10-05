import 'package:ayesha/quiz_game/quiz_welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  // home here is screen
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, // to remove debug banner
      // home: StudentDetails(),
      home: QuizWelcomeScreen(
        title: "Welcome to Quiz Game",
        buttonText: "Start Quiz",
      ),
    ),
  );
}
