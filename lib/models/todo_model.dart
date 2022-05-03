class ToDo {
  final String id;
  final String title;
  final String category;
  final bool isStarred;
  final bool isCompleted;

  const ToDo(
      {this.id = "",
      required this.title,
      required this.category,
      this.isStarred = false,
      this.isCompleted = false});
}
