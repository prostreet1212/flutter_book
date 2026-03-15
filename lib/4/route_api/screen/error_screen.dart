import 'package:flutter/material.dart';
import 'package:flutter_book/4/route_api/example/my_route_delegate.dart' show MyRouterDelegate;


class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ErrorScreen'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              (Router.of(context).routerDelegate as MyRouterDelegate)
                  .setNewRoutePath('/');
            },
            child: const Text('Перейти на RootScreen')),
      ),
    );
  }
}
