import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginModel {
  String? email;
  String? password;

  LoginModel(this.email, this.password);
}

class LoginStateNotifier extends StateNotifier<LoginModel> {
  LoginStateNotifier(LoginModel state) : super(state);
  static final provider =
      StateNotifierProvider<LoginStateNotifier, LoginModel>((_) => LoginStateNotifier(LoginModel("", "")));

  void updateMail() => state = LoginModel('email', '');
}

class LoginWrapperPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final loginState = watch(LoginStateNotifier.provider);
    return Scaffold(
        appBar: AppBar(
          title: Text('${loginState.email}'),
        ),
        body: AutoRouter.declarative(routes: (context) {
          return [EmailRoute(), if (loginState.email!.isNotEmpty) PasswordRoute()];
        }));
  }
}

class EmailPage extends StatelessWidget {
  const EmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => context.read(LoginStateNotifier.provider.notifier).updateMail(),
        child: Text('Email'),
      ),
    );
  }
}

class PasswordPage extends StatelessWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Password'),
      ),
    );
  }
}
