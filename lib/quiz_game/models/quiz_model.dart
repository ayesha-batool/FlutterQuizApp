class QuizModel {
  String question;
  List<String> options;
  int answer;

  QuizModel(this.question, this.options, this.answer);
}

QuizModel q1 = QuizModel("What is the capital of France?", [
  "Berlin",
  "Madrid",
  "Paris",
  "Rome",
], 2);
QuizModel q2 = QuizModel("Which planet is known as the Red Planet?", [
  "Earth",
  "Mars",
  "Jupiter",
  "Saturn",
], 1);
QuizModel q3 = QuizModel("Who wrote 'Hamlet'?", [
  "Charles Dickens",
  "Mark Twain",
  "William Shakespeare",
  "Leo Tolstoy",
], 2);
QuizModel q4 = QuizModel("What is the largest ocean on Earth?", [
  "Atlantic Ocean",
  "Indian Ocean",
  "Arctic Ocean",
  "Pacific Ocean",
], 3);
