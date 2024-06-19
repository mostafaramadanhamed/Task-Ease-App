import 'package:flutter/material.dart';
import 'package:task_ease/core/routing/app_router.dart';

import 'core/routing/routes.dart';

class TaskEaseApp extends StatelessWidget {
  final AppRouter appRouter;

  const TaskEaseApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Task Ease",
      initialRoute: Routes.initialScreen,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
