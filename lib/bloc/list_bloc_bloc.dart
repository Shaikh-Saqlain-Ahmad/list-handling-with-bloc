import 'package:bloc/bloc.dart';
import 'package:list_with_bloc/bloc/list_bloc_event.dart';
import 'package:list_with_bloc/bloc/list_bloc_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final List<String> todosList = [];
  TodoBloc() : super(const TodoState()) {
    on<AddtodoEvent>(_addToDoEvents);
    on<RemovetodoEvent>(_removeToDoEvents);
  }
  void _addToDoEvents(AddtodoEvent event, Emitter<TodoState> emit) {
    todosList.add(event.tasks);
    emit(state.copyWith(todosList: List.from(todosList)));
  }

  void _removeToDoEvents(RemovetodoEvent event, Emitter<TodoState> emit) {
    todosList.remove(event.tasks);
    emit(state.copyWith(todosList: List.from(todosList)));
  }
}
