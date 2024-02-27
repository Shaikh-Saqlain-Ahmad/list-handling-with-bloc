import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_with_bloc/bloc/list_bloc_bloc.dart';
import 'package:list_with_bloc/ui/list-screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(create: (_) => TodoBloc())],
        child: const MaterialApp(
          home: Scaffold(body: ListScreen()),
        ));
  }
}
