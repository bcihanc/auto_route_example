import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/declarative_login/declarative_login_pages.dart';

const declarativeLoginRoutes = AutoRoute(path: "/login", page: LoginWrapperPage, children: [
  AutoRoute(page: EmailPage),
  AutoRoute(page: PasswordPage),
]);
