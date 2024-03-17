import 'package:go_router/go_router.dart';
import 'package:todoist/core/router_path.dart';
import 'package:todoist/ui/pages/home_page.dart/home_page.dart';
import 'package:todoist/ui/pages/welcome_page/welcome_page.dart';

final router = GoRouter(
  initialLocation: RouterPath.welcome,
  routes: [
    GoRoute(
      path: RouterPath.welcome,
      builder: (context, state) => const WelcomePage(),
    ),
    GoRoute(
      path: RouterPath.home,
      builder: (context, state) => const HomePage(),
    ),
  ],
);
