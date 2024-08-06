import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_casestudy/src/models/todo.dart';
import 'package:mobx_casestudy/src/stores/todo_store.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var todoStore = TodoStore();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          var todo =
              Todo(name: DateTime.now().toString(), description: 'teste');

          todoStore.add(todo);
        },
      ),
      appBar: AppBar(
        title: Observer(
          builder: (context) => Text(todoStore.todos.length.toString()),
        ),
      ),
      body: Observer(
        builder: (context) {
          return ListView.builder(
            itemCount: todoStore.todos.length,
            itemBuilder: (context, index) {
              return Text(todoStore.todos[index].name);
            },
          );
        },
      ),
    );
  }
}
