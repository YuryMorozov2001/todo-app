import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/bloc/todo/todo_bloc.dart';

class TodoListWidget extends StatelessWidget {
  const TodoListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if (state.todos != null && state.todos != []) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: state.todos!.length,
              itemBuilder: (context, index) => GestureDetector(
                onLongPress: () => context
                    .read<TodoBloc>()
                    .add(DeleteTodoEvent(id: state.todos![index].id)),
                onTap: () {
                  context
                      .read<TodoBloc>()
                      .add(UpdateTodoEvent(id: state.todos![index].id));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Theme.of(context).primaryColorLight,
                    child: Row(
                      children: [
                        Checkbox(
                          value: state.todos![index].completed,
                          onChanged: (bool? value) {
                            context.read<TodoBloc>().add(
                                UpdateTodoEvent(id: state.todos![index].id));
                          },
                        ),
                        Text(
                          "${state.todos![index].id} ${state.todos![index].title}",
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
