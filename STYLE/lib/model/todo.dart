class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Атай (0224-15-78-78)', isDone: true ),
      ToDo(id: '02', todoText: 'Самат (0776-46-65-78)', isDone: true ),
      ToDo(id: '03', todoText: 'Үсөн (0224-15-78-78)', ),
      ToDo(id: '04', todoText: 'Данияр (0224-15-78-78)', ),
      ToDo(id: '05', todoText: 'Кубат (0224-15-78-78)', ),
      ToDo(id: '06', todoText: 'Баатыр (0224-15-78-78)', ),
    ];
  }
}