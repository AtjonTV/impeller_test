
import 'package:go_router/go_router.dart';
import 'package:impeller_test/components/navigation/fading_navigation_transition.dart';
import 'package:impeller_test/router.dart';
import 'package:impeller_test/screens/home/home.dart';

final homeRoutes = GoRoute(
  name: routingGroupHome,
  path: routingGroupHome,
  pageBuilder: (context, state) {
    return FadingNavigationTransition(key: state.pageKey, child: const HomeScreen());
  },
  routes: [
    HomeScreen.route
  ]
);