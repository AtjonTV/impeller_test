import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:impeller_test/components/navigation/scaffold_bottom_nav.dart';
import 'package:impeller_test/components/navigation/scaffold_bottom_nav_tab_item.dart';
import 'package:impeller_test/components/navigation/sliding_navigation_transition.dart';
import 'package:impeller_test/screens/dishes/_routes.dart';
import 'package:impeller_test/screens/home/_routes.dart';
import 'package:impeller_test/screens/home/home.dart';

const routingGroupHome = "/home";
const routingGroupDishes = "/dishes";

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();
final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: routingGroupHome,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      pageBuilder: (context, state, child) {
        return NoTransitionPage(child: ScaffoldBottomNav(child: child));
      },
      routes: [
        homeRoutes,
        dishesRoutes,
      ],
    )
  ],
);

getRoutingTransition(BuildContext context, GoRouterState state, Widget child) {
  if (defaultTargetPlatform == TargetPlatform.iOS) {
    return CupertinoPage(child: child);
  } else {
    return SlidingNavigationTransition(child: child);
  }
}

List<ScaffoldBottomNavTabItem> getNavigationTabs(BuildContext context) {
  return [
    ScaffoldBottomNavTabItem(
      label: "Home",
      icon: const Icon(Icons.home_outlined),
      initialLocation: routingGroupHome,
    ),
    ScaffoldBottomNavTabItem(
      label: "Dishes",
      icon: const Icon(Icons.dinner_dining),
      initialLocation: routingGroupDishes,
    ),
  ];
}