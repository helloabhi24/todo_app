class Tasks {
  final String name;
  bool isDone;

  Tasks({this.isDone = false, required this.name});

  void toggleDone() {
    isDone = !isDone;
  }
}
