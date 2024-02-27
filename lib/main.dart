import 'package:flutter/material.dart';
import 'package:list_with_bloc/ui/list-screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: ListScreen()),
    );
  }
}
