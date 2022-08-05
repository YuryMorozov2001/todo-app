import 'package:flutter/material.dart';

import 'widgets/todo_creation_panel.dart';
import 'widgets/todo_list.dart';

class BiStreamPage extends StatelessWidget {
  const BiStreamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TodoCreationPanel(),
        const TodoListWidget(),
      ],
    );
  }
}
