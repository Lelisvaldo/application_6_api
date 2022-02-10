class TodoModel {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  TodoModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  static TodoModel fromJson(dynamic map) {
    return TodoModel(
      userId: map['userId'],
      id: map['id'],
      completed: map['completed'],
      title: map['title'],
    );
  }

  static TodoModel stub() => TodoModel(
    userId: 1,
    id: 1,
    title: "Teste",
    completed: false,
  );
}
