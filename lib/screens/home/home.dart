import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:impeller_test/router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const routeName = "home";
  static final route = GoRoute(
    name: routeName,
    path: routeName,
    pageBuilder: (context, state) {
      return getRoutingTransition(context, state, const HomeScreen());
    },
  );

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Home Screen',
            ),
          ],
        ),
      ),
    );
  }
}