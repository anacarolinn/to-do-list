import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_list/data/db/app_database.dart';

part 'task_model.freezed.dart';

@freezed
abstract class TaskModel with _$TaskModel {
  factory TaskModel({
    @Default(0) int id,
    required DateTime createdAt, // no video está String
    DateTime? updatedAt,
    required String title,
    String? description,
    DateTime? dueDate,
    String? dueHour,
    DateTime? reminder,
    required String status,
    String? prioridade,
    int? categoryId,
    int? projectId,
  }) = _TaskModel;

  factory TaskModel.fromEntity(TasksTableData task) {
    return TaskModel(
      id: task.id,
      createdAt: task.createdAt, // formatDateTimeDifferance(Datetime date)
      updatedAt: task.updatedAt,
      title: task.title,
      dueDate: task.dueDate,
      dueHour: task.dueHour,
      reminder: task.reminder,
      status: task.status,
      prioridade: task.prioridade,
      categoryId: task.categoryId,
    );
  }
}

// para usar como resposta no createdAt
String formatDateTimeDifferance(DateTime date) {
  final now = DateTime.now();
  final dif = now.difference(date);

  if (dif.inDays > 0) {
    return '${dif.inDays}dias atrás';
  } else if (dif.inHours > 0) {
    return '${dif.inHours}horas atrás';
  } else if (dif.inMinutes > 0) {
    return '${dif.inMinutes}minutos atrás';
  } else {
    return 'agora mesmo';
  }
}
