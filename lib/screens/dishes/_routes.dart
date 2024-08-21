import 'package:go_router/go_router.dart';
import 'package:impeller_test/components/navigation/fading_navigation_transition.dart';
import 'package:impeller_test/router.dart';
import 'package:impeller_test/screens/dishes/own_dishes.dart';

final dishesRoutes = GoRoute(
  name: routingGroupDishes,
  path: routingGroupDishes,
  pageBuilder: (context, state) {
    return FadingNavigationTransition(key: state.pageKey, child: const OwnDishesScreen());
  },
  routes: [
    OwnDishesScreen.route
  ],
);