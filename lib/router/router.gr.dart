// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../bottom_navigation_bar/bottom_navigation_bar_pages.dart' as _i6;
import '../declarative_auth/declarative_auth_pages.dart' as _i7;
import '../declarative_login/declarative_login_pages.dart' as _i5;
import '../main.dart' as _i3;
import '../nested/nested_pages.dart' as _i4;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.HomePage();
        }),
    BooksWrapperRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.BooksWrapperPage();
        }),
    LoginWrapperRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.LoginWrapperPage();
        }),
    BottomNavigationBarWrapperRoute.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (_) {
              return const _i6.BottomNavigationBarWrapperPage();
            }),
    AuthFlowWrapperRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.AuthFlowWrapperPage();
        }),
    BooksRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.BooksPage();
        }),
    BookDetailsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final queryParams = data.queryParams;
          final args = data.argsAs<BookDetailsRouteArgs>(
              orElse: () => BookDetailsRouteArgs(
                  bookId: pathParams.getInt('bookId'),
                  author: queryParams.optString('author')));
          return _i4.BookDetailsPage(bookId: args.bookId, author: args.author);
        }),
    EmailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.EmailPage();
        }),
    PasswordRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.PasswordPage();
        }),
    FlowRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    ProfileRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    FlowRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.FlowPage();
        }),
    FlowDetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.FlowDetailPage();
        }),
    ProfileRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.ProfilePage();
        }),
    ProfileDetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.ProfileDetailPage();
        }),
    SplashRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.SplashPage();
        }),
    AuthRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.AuthPage();
        }),
    ProtectedRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.ProtectedPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(BooksWrapperRoute.name, path: '/books', children: [
          _i1.RouteConfig(BooksRoute.name, path: ''),
          _i1.RouteConfig(BookDetailsRoute.name, path: ':bookId'),
          _i1.RouteConfig('*#redirect',
              path: '*', redirectTo: '', fullMatch: true)
        ]),
        _i1.RouteConfig(LoginWrapperRoute.name, path: '/login', children: [
          _i1.RouteConfig(EmailRoute.name, path: 'email-page'),
          _i1.RouteConfig(PasswordRoute.name, path: 'password-page')
        ]),
        _i1.RouteConfig(BottomNavigationBarWrapperRoute.name,
            path: '/bottom-navigation-bar',
            children: [
              _i1.RouteConfig(FlowRouter.name, path: 'flow', children: [
                _i1.RouteConfig(FlowRoute.name, path: ''),
                _i1.RouteConfig(FlowDetailRoute.name, path: 'details')
              ]),
              _i1.RouteConfig(ProfileRouter.name, path: 'profile', children: [
                _i1.RouteConfig(ProfileRoute.name, path: ''),
                _i1.RouteConfig(ProfileDetailRoute.name, path: 'details')
              ])
            ]),
        _i1.RouteConfig(AuthFlowWrapperRoute.name, path: '/auth', children: [
          _i1.RouteConfig(SplashRoute.name, path: 'splash-page'),
          _i1.RouteConfig(AuthRoute.name, path: 'auth-page'),
          _i1.RouteConfig(ProtectedRoute.name, path: 'protected-page')
        ])
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class BooksWrapperRoute extends _i1.PageRouteInfo {
  const BooksWrapperRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/books', initialChildren: children);

  static const String name = 'BooksWrapperRoute';
}

class LoginWrapperRoute extends _i1.PageRouteInfo {
  const LoginWrapperRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/login', initialChildren: children);

  static const String name = 'LoginWrapperRoute';
}

class BottomNavigationBarWrapperRoute extends _i1.PageRouteInfo {
  const BottomNavigationBarWrapperRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/bottom-navigation-bar', initialChildren: children);

  static const String name = 'BottomNavigationBarWrapperRoute';
}

class AuthFlowWrapperRoute extends _i1.PageRouteInfo {
  const AuthFlowWrapperRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/auth', initialChildren: children);

  static const String name = 'AuthFlowWrapperRoute';
}

class BooksRoute extends _i1.PageRouteInfo {
  const BooksRoute() : super(name, path: '');

  static const String name = 'BooksRoute';
}

class BookDetailsRoute extends _i1.PageRouteInfo<BookDetailsRouteArgs> {
  BookDetailsRoute({required int bookId, String? author})
      : super(name,
            path: ':bookId',
            args: BookDetailsRouteArgs(bookId: bookId, author: author),
            rawPathParams: {'bookId': bookId},
            rawQueryParams: {'author': author});

  static const String name = 'BookDetailsRoute';
}

class BookDetailsRouteArgs {
  const BookDetailsRouteArgs({required this.bookId, this.author});

  final int bookId;

  final String? author;
}

class EmailRoute extends _i1.PageRouteInfo {
  const EmailRoute() : super(name, path: 'email-page');

  static const String name = 'EmailRoute';
}

class PasswordRoute extends _i1.PageRouteInfo {
  const PasswordRoute() : super(name, path: 'password-page');

  static const String name = 'PasswordRoute';
}

class FlowRouter extends _i1.PageRouteInfo {
  const FlowRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'flow', initialChildren: children);

  static const String name = 'FlowRouter';
}

class ProfileRouter extends _i1.PageRouteInfo {
  const ProfileRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

class FlowRoute extends _i1.PageRouteInfo {
  const FlowRoute() : super(name, path: '');

  static const String name = 'FlowRoute';
}

class FlowDetailRoute extends _i1.PageRouteInfo {
  const FlowDetailRoute() : super(name, path: 'details');

  static const String name = 'FlowDetailRoute';
}

class ProfileRoute extends _i1.PageRouteInfo {
  const ProfileRoute() : super(name, path: '');

  static const String name = 'ProfileRoute';
}

class ProfileDetailRoute extends _i1.PageRouteInfo {
  const ProfileDetailRoute() : super(name, path: 'details');

  static const String name = 'ProfileDetailRoute';
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: 'splash-page');

  static const String name = 'SplashRoute';
}

class AuthRoute extends _i1.PageRouteInfo {
  const AuthRoute() : super(name, path: 'auth-page');

  static const String name = 'AuthRoute';
}

class ProtectedRoute extends _i1.PageRouteInfo {
  const ProtectedRoute() : super(name, path: 'protected-page');

  static const String name = 'ProtectedRoute';
}
