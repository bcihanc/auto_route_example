import 'package:auto_route_example/bottom_navigation_bar/bottom_navigation_bar_pages.dart';
import 'package:auto_route_example/router/router.dart';
import 'package:auto_route_example/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

final appRouterProvider = Provider((_) => AppRouter());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => RouterConsumerWidget();
}

class RouterConsumerWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final appRouter = watch(appRouterProvider);
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.replaceRoute(BooksWrapperRoute()),
              child: Text('/books nested router replace'),
            ),
            ElevatedButton(
              onPressed: () => context.pushRoute(LoginWrapperRoute()),
              child: Text('/login declarative router'),
            ),
            ElevatedButton(
              onPressed: () => context.pushRoute(AuthFlowWrapperRoute()),
              child: Text('/auth declarative router'),
            ),
            ElevatedButton(
              onPressed: () => context.navigateTo(BottomNavigationBarWrapperRoute()),
              child: Text('/bottom-navigation-bar auto tabs scaffold router'),
            ),
          ],
        ),
      ),
    );
  }
}
