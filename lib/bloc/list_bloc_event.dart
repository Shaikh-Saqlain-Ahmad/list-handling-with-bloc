import 'package:equatable/equatable.dart';

abstract class TodoEvent extends Equatable {
  const TodoEvent();
}

class AddtodoEvent extends TodoEvent {
  final String tasks;
  const AddtodoEvent({required this.tasks});

  @override
  List<Object?> get props => [tasks];
}

class RemovetodoEvent extends TodoEvent {
  final Object tasks;
  const RemovetodoEvent({required this.tasks});
  @override
  List<Object?> get props => [tasks];
}
