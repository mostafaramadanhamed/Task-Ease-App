import 'package:flutter/material.dart';
import 'package:task_ease/core/routing/routes.dart';
import 'package:task_ease/features/onboarding/presesntation/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.initialScreen:
        return MaterialPageRoute(
          builder: (_) => const Placeholder(),
        );
        case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
        case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const Placeholder(),
        );
        case Routes.addTaskScreen:
        return MaterialPageRoute(
          builder: (_) => const Placeholder(),
        );
        case Routes.editTaskScreen:
        return MaterialPageRoute(
          builder: (_) => const Placeholder(),
        );
        default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}