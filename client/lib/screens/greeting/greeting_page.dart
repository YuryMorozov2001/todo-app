import 'package:client/logic/bloc/hello/hello_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GreetingPage extends StatelessWidget {
  const GreetingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController surnameController = TextEditingController();
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(hintText: 'name'),
              controller: nameController,
            ),
            TextField(
              decoration: const InputDecoration(hintText: 'surname'),
              controller: surnameController,
            ),
            const SizedBox(height: 12),
            ElevatedButton(
                onPressed: () => context.read<HelloBloc>().add(GetHelloEvent(
                    name: nameController.text,
                    surname: surnameController.text)),
                child: const Text('get hello')),
            Expanded(
              child: Center(
                child: BlocBuilder<HelloBloc, HelloState>(
                  builder: (context, state) {
                    if (state.helloResponse != null) {
                      return Text(state.helloResponse!);
                    }
                    return const Text('пусто');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
