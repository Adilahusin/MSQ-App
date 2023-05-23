
class Question{

  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestion(){
  List<Question> list = [];

  // Add questions and answers here

  list.add(Question(
    "10 + 10?",
    [
      Answer("20", true),
      Answer("40", false),
      Answer("60", false),
      Answer("70", false),
    ],
  ));

    list.add(Question(
    "50 + 10?",
    [
      Answer("50", false),
      Answer("10", false),
      Answer("60", true),
      Answer("90", false),
    ],
  ));

    list.add(Question(
    "100-50?",
    [
      Answer("10", false),
      Answer("20", false),
      Answer("30", false),
      Answer("50", true),
    ],
  ));

    list.add(Question(
    "100 + 100?",
    [
      Answer("200", true),
      Answer("40", false),
      Answer("60", false),
      Answer("70", false),
    ],
  ));

  return list;
}