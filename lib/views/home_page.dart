import 'package:application_6/controllers/home_controller.dart';
import 'package:application_6/services/dio_client.dart';
import 'package:application_6/services/json_placeholder_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController(JsonplaceholderService(DioClient()));

  @override
  void initState(){
    super.initState();
    controller.feachAllTodos();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: AnimatedBuilder(
        animation: controller,
        builder: (context, widget) {
          return ListView.builder(
            itemCount: controller.todos.length,
            itemBuilder: (context, index) {
              final todo = controller.todos[index];
              return ListTile(
                title: Text(todo.title),
              );
            },
          );
        },
      ),
    );
  }
}
