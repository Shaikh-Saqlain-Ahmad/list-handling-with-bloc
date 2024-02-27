import 'package:equatable/equatable.dart';

abstract class TodoEvent extends Equatable {
  const TodoEvent();
}

class AddtodoEvent extends TodoEvent {
  @override
  List<Object?> get props => [];
}

class RemovetodoEvent extends TodoEvent {
  @override
  List<Object?> get props => [];
}
