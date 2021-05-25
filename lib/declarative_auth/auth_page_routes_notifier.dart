import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/router/router.gr.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthPageRoutesNotifier extends StateNotifier<List<PageRouteInfo>> {
  AuthPageRoutesNotifier() : super([SplashRoute()]) {
    Future.delayed(Duration(seconds: 2), () => true).then((isLogin) {
      state.remove(0);
      state = [...state, isLogin ? ProtectedRoute() : AuthRoute()];
    });
  }

  static final provider =
      StateNotifierProvider<AuthPageRoutesNotifier, List<PageRouteInfo>>((_) => AuthPageRoutesNotifier());
}
