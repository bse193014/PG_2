class QuizQuestions {
  const QuizQuestions({required this.text,required this.answers});
  final String text;
  final List<String> answers;

  List<String> getShuffledList (){
    final shuffledlist = List.of(answers);
    shuffledlist.shuffle();
    return shuffledlist;
  }
}