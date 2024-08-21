import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:impeller_test/router.dart';

class ScaffoldBottomNav extends StatefulWidget {
  const ScaffoldBottomNav({super.key, required this.child});

  final Widget child;

  @override
  State<ScaffoldBottomNav> createState() => _ScaffoldBottomNavState();
}

class _ScaffoldBottomNavState extends State<ScaffoldBottomNav> {
  int get _currentIndex => _locationToTabIndex(GoRouterState.of(context).uri.toString());

  int _locationToTabIndex(String location) {
    final index = getNavigationTabs(context).indexWhere((element) => location.startsWith(element.initialLocation));
    return index < 0 ? 0 : index;
  }

  void _onItemTapped(BuildContext context, int index) {
    final target = getNavigationTabs(context)[index];
    context.go(target.initialLocation);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: getNavigationTabs(context),
        enableFeedback: false,
        showUnselectedLabels: true,
        onTap: (value) => _onItemTapped(context, value),
      ),
    );
  }
}