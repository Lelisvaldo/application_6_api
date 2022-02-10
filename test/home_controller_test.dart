import 'package:application_6/controllers/home_controller.dart';
import 'package:application_6/models/todo_model.dart';
import 'package:application_6/services/json_placeholder_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class JsonPlaceHolderServiceMock extends Mock
    implements JsonplaceholderService {}

void main() {
  test('deve preencher a lista corretamente', () async {
    final service = JsonPlaceHolderServiceMock();
    when(() => service.getAll()).thenAnswer((_) async => [TodoModel.stub()]);
    final controller = HomeController(service);
    await controller.feachAllTodos();
    expect(controller.todos.length, 1);
  });
}
