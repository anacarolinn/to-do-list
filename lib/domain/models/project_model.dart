import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_list/data/db/app_database.dart';

part 'project_model.freezed.dart';

@freezed
abstract class ProjectModel with _$ProjectModel {
  factory ProjectModel({
    @Default(0) int id,
    required DateTime createdAt,
    DateTime? updatedAt,
    required String name,
    String? description,
    DateTime? startDate,
    DateTime? finalDate,
    required String status,
  }) = _ProjectModel;

  factory ProjectModel.fromEntity(ProjectsTableData project) {
    return ProjectModel(
      id: project.id,
      createdAt: project.createdAt,
      updatedAt: project.updatedAt,
      name: project.name,
      description: project.description,
      startDate: project.startDate,
      finalDate: project.finalDate,
      status: project.status,
    );
  }
}
