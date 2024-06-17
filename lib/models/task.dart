import 'package:equatable/equatable.dart';

class Task extends Equatable {
  final String id;
  final String title;
  final String note;
  final String timeStartTask;
  final String dateStartTask;
  final bool isCompleted;

  const Task(
      {required this.id,
      required this.title,
      required this.note,
      required this.timeStartTask,
      required this.dateStartTask,
      required this.isCompleted});

  @override
  List<Object?> get props {
    return [
      id,
      title,
      note,
      timeStartTask,
      dateStartTask,
      isCompleted,
    ];
  }
}
