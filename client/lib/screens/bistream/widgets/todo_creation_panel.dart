
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/todo_barrel.dart';
import '../../../logic/bloc/todo/todo_bloc.dart';

class TodoCreationPanel extends StatelessWidget {
  TodoCreationPanel({Key? key}) : super(key: key);

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _textEditingController,
          ),
        ),
        BlocBuilder<TodoBloc, TodoState>(
          builder: (context, state) {
            return ElevatedButton(
                onPressed: () {
                  context.read<TodoBloc>().add(
                        CreateTodoEvent(
                          todo: Todo(
                              id: state.todos!.isNotEmpty
                                  ? state.todos!.last.id + 1
                                  : 1,
                              completed: false,
                              title: _textEditingController.text),
                        ),
                      );
                  _textEditingController.clear();
                },
                child: const Text('create todo'));
          },
        )
      ],
    );
  }
}
