import 'package:application_6/services/http_client.dart';

import '../models/todo_model.dart';

const url = 'https://jsonplaceholder.typicode.com/todos';

class JsonplaceholderService {
  final IHttpClient client;

  JsonplaceholderService(this.client);

  Future<List<TodoModel>> getAll() async {
    final body = await client.get(url);
    return (body as List).map(TodoModel.fromJson).toList();
  }
}
