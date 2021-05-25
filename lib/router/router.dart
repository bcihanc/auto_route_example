import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/bottom_navigation_bar/bottom_navigation_bar_routes.dart';
import 'package:auto_route_example/declarative_auth/declarative_auth_routes.dart';
import 'package:auto_route_example/declarative_login/declarative_login_routes.dart';
import 'package:auto_route_example/main.dart';
import 'package:auto_route_example/nested/nested_routes.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      initial: true,
    ),
    nestedRoutes,
    declarativeLoginRoutes,
    bottomNavigationBarRoutes,
    declarativeAuthRoutes
  ],
)
class $AppRouter {}
