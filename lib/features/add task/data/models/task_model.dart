import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'task_model.g.dart';

@HiveType(typeId: 1)
class TaskModel {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String taskGroup;
  @HiveField(2)
  final String projectName;
  @HiveField(3)
  final String description;
  @HiveField(4)
  final DateTime selectedDate;
  @HiveField(5)
  final TimeOfDay selectedTime;

  TaskModel(
      {required this.id,
      required this.taskGroup,
      required this.projectName,
      required this.description,
      required this.selectedDate,
      required this.selectedTime,
      });
}
