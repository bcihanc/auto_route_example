import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/bottom_navigation_bar/bottom_navigation_bar_pages.dart';
import 'package:auto_route_example/nested/nested_pages.dart';

const bottomNavigationBarRoutes = AutoRoute(
  path: "/bottom-navigation-bar",
  page: BottomNavigationBarWrapperPage,
  children: [
    AutoRoute(path: "flow", name: "FlowRouter", page: EmptyRouterPage, children: [
      AutoRoute(page: FlowPage, path: ""),
      AutoRoute(page: FlowDetailPage, path: "details"),
    ]),
    AutoRoute(path: "profile", name: "ProfileRouter", page: EmptyRouterPage, children: [
      AutoRoute(path: "", page: ProfilePage),
      AutoRoute(path: "details", page: ProfileDetailPage),
    ]),
  ],
);
