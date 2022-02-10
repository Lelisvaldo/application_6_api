import 'package:application_6/models/todo_model.dart';
import 'package:application_6/services/json_placeholder_service.dart';
import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier {
  final JsonplaceholderService _service;

  HomeController(this._service);

  var todos = <TodoModel>[];

  Future<void> feachAllTodos() async {
    todos = await _service.getAll();
    notifyListeners();
  }
}
