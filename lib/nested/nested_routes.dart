import 'package:auto_route/annotations.dart';
import 'package:auto_route_example/nested/nested_pages.dart';

const nestedRoutes = AutoRoute(
  path: "/books",
  page: BooksWrapperPage,
  children: [
    AutoRoute(
      path: "",
      page: BooksPage,
    ),
    AutoRoute(
      path: ":bookId",
      page: BookDetailsPage,
    ),
    RedirectRoute(path: '*', redirectTo: ''),
  ],
);
