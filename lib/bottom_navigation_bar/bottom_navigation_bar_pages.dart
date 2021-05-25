import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/router/router.gr.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWrapperPage extends StatelessWidget {
  const BottomNavigationBarWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) {
        return AppBar(
          title: Text(tabsRouter.current.name),
          leading: AutoBackButton(),
        );
      },
      routes: const [FlowRouter(), ProfileRouter()],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Flow',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => context.pushRoute(ProfileDetailRoute()), child: Text('go to profile details route'));
  }
}

class ProfileDetailPage extends StatelessWidget {
  const ProfileDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('profile detail');
  }
}

class FlowPage extends StatelessWidget {
  const FlowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => context.pushRoute(FlowDetailRoute()), child: Text('go to flow details route'));
  }
}

class FlowDetailPage extends StatelessWidget {
  const FlowDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Flow detail');
  }
}
