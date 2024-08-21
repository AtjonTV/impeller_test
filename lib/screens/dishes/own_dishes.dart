import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:impeller_test/router.dart';

class OwnDishesScreen extends StatefulWidget {
  const OwnDishesScreen({super.key});

  static const routeName = "dishes/own";
  static final route = GoRoute(
    name: routeName,
    path: routeName,
    pageBuilder: (context, state) {
      return getRoutingTransition(context, state, const OwnDishesScreen());
    },
  );

  @override
  State<OwnDishesScreen> createState() => _OwnDishesScreenState();
}

class _OwnDishesScreenState extends State<OwnDishesScreen> {
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
              'Own Dishes Screen',
            ),
          ],
        ),
      ),
    );
  }
}