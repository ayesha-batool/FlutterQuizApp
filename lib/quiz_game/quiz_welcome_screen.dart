import 'package:ayesha/quiz_game/quiz_game.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // ✅ Import this package

class QuizWelcomeScreen extends StatelessWidget {
  final String title;
  final String buttonText;
  const QuizWelcomeScreen({
    super.key,
    required this.title,
    required this.buttonText,
  });

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              (title),
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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.blue.shade900,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QuizGameScreen(),
                  ),
                );
              },
              child: Text(
                (buttonText),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
