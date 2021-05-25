import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/declarative_auth/auth_page_routes_notifier.dart';
import 'package:auto_route_example/main.dart';
import 'package:auto_route_example/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthFlowWrapperPage extends ConsumerWidget {
  const AuthFlowWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final authPagesRoutes = watch(AuthPageRoutesNotifier.provider);
    return Scaffold(
        appBar: AppBar(
          title: Text('AuthFlowWrapperPage'),
        ),
        body: AutoRouter.declarative(routes: (_) => authPagesRoutes));
  }
}

class ProtectedPage extends StatelessWidget {
  const ProtectedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('protected'),
        ElevatedButton(
            onPressed: () async {
              // context.read(appRouterProvider).popTop();
              context.read(appRouterProvider).push(AuthRoute());
            },
            child: Text('button')),
      ],
    );
  }
}

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('auth');
  }
}

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('splash'),
    );
  }
}
