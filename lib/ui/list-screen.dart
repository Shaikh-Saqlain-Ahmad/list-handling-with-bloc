import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_with_bloc/bloc/list_bloc_bloc.dart';
import 'package:list_with_bloc/bloc/list_bloc_event.dart';
import 'package:list_with_bloc/bloc/list_bloc_state.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Todo List")),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if (state.todosList.isEmpty) {
            return const Center(
              child: Text("No todos'"),
            );
          } else if (state.todosList.isNotEmpty) {
            return ListView.builder(
              itemCount: state.todosList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.todosList[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete_outline_rounded),
                    onPressed: () {
                      context
                          .read<TodoBloc>()
                          .add(RemovetodoEvent(tasks: state.todosList[index]));
                    },
                  ),
                );
              },
            );
          } else {
            return const SizedBox();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          for (int i = 0; i < 10; i++) {
            context
                .read<TodoBloc>()
                .add(AddtodoEvent(tasks: 'Tasks ${i.toString()}'));
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
