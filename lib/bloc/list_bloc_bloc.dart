import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:list_with_bloc/bloc/list_bloc_event.dart';
import 'package:list_with_bloc/bloc/list_bloc_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(const TodoState());
}
