import 'package:flutter/material.dart';
import 'package:flutter_book/example_navigator_observer/screens/main_screen.dart';

import 'app_navigator_observer.dart';

void main() {
  runApp(
    MaterialApp(
      navigatorObservers: [AppNavigatorObserver()],
      home: const MainScreen(),
    ),
  );
}
