import 'package:ayesha/quiz_game/models/quiz_model.dart';
import 'package:ayesha/quiz_game/quiz_welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // ✅ Import this package

class QuizGameScreen extends StatefulWidget {
  const QuizGameScreen({super.key});

  @override
  State<QuizGameScreen> createState() => _QuizGameScreenState();
}

class _QuizGameScreenState extends State<QuizGameScreen> {
  List quizList = [q1, q2, q3, q4];
  QuizModel currentQuiz = q1;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity, // make sure it covers full screen
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/jellyfish.jpg"),
            fit: BoxFit.cover, // keeps the image full-screen and vertical
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to the Quiz Game!",
                textAlign: TextAlign.center,
                style: GoogleFonts.fredoka(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 10,
                      color: Colors.black,
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              optionListView(),
            ],
          ),
        ),
      ),
    );
  }

  optionTaped(int index) {
    if (index == currentQuiz.answer) {
      setState(() {
        if (currentIndex < quizList.length - 1) {
          currentIndex++;
          currentQuiz = quizList[currentIndex];
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const QuizWelcomeScreen(
                title: "Thank you for Playing",
                buttonText: "Play Again",
              ),
            ),
          );
        }
        if (currentIndex < quizList.length) {
          currentQuiz = quizList[currentIndex];
        } else {
          // Quiz is over, you can show a summary or restart the quiz
          currentIndex = 0;
          currentQuiz = quizList[currentIndex];
        }
      });
      // correct answer
      print(index);
    } else {
      // wrong answer
      print("Wrong Answer");
    }
  }

  Container optionListView() {
    return Container(
      padding: const EdgeInsets.all(34),
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(color: Colors.blue.withValues(alpha: 0.5)),
      child: Column(
        children: [
          Text(
            currentQuiz.question,
            textAlign: TextAlign.center,
            style: GoogleFonts.fredoka(
              fontSize: 20,

              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 10,
                  color: Colors.black,
                  offset: const Offset(2, 2),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 300, // Set a fixed height for the ListView
            child: ListView.builder(
              itemCount: currentQuiz.options.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      optionTaped(index);
                      // Handle option tap
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        currentQuiz.options[index],
                        style: GoogleFonts.francoisOne(
                          fontSize: 18,
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
