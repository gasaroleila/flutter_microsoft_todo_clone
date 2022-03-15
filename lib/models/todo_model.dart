class ToDo {
  final String title;
  final String category;
  final bool isStarred;
  final bool isCompleted;

  const ToDo(
      {required this.title,
      required this.category,
      this.isStarred = false,
      this.isCompleted = false});
}
