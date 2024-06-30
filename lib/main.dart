import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:task_ease/core/routing/app_router.dart';
import 'package:task_ease/core/utils/shared_strings.dart';
import 'package:task_ease/task_ease_app.dart';

import 'features/add task/data/models/task_model.dart';

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(TaskModelAdapter());
  await Hive.openBox<TaskModel>(SharedStrings.kTaskBox);
  runApp( TaskEaseApp(appRouter: AppRouter(),));
}
