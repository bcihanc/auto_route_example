import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/declarative_auth/declarative_auth_pages.dart';

const declarativeAuthRoutes = AutoRoute(path: "/auth", page: AuthFlowWrapperPage, children: [
  AutoRoute(page: SplashPage),
  AutoRoute(page: AuthPage),
  AutoRoute(page: ProtectedPage),
]);
