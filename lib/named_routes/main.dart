//import 'dart:nativewrappers/_internal/vm/bin/vmservice_io.dart' as AppRoutesName;

import 'package:flutter/material.dart';
import 'package:flutter_book/named_routes/screens/default_screen.dart';
import 'package:flutter_book/named_routes/screens/test_screen.dart';
import '../example_navigator_observer/screens/home_screen.dart';
import '../example_navigator_observer/screens/login_screen.dart';
import '../example_navigator_observer/screens/main_screen.dart';
import '../example_navigator_observer/screens/profile_screen.dart';

abstract final class AppRoutesName {
  static const String main = '/';
  static const String profile = '/profile';
  static const String login = '/login';
  static const String home = '/home';
}

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {

      AppRoutesName.main: (context) => const MainScreen(),
      AppRoutesName.profile: (context) => const ProfileScreen(),
      AppRoutesName.login: (context) => const LoginScreen(),
      AppRoutesName.home: (context) => const HomeScreen(),
    },
    onUnknownRoute: (settings) => MaterialPageRoute(
      builder: (context) => const DefaultScreen(),
    ),
    onGenerateRoute: (settings) {
      // Добавили проверку наличия аргументов при переходе
      if (settings.name == '/test') {
        final args = (settings.arguments as Map?)?['test'];
        if (args == true) {
          return MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          );
        } else {
          return MaterialPageRoute(
            builder: (context) => const TestScreen(),
          );
        }
      }

      // В данном случае, в карте маршрутов routes
      // не прописан /test_route.
      // Но мы можем в onGenerateRoute, проверить, и построить нужный
      // маршрут.
      // if (settings.name == '/test') {
      //   return MaterialPageRoute(
      //     builder: (context) => const TestScreen(),
      //   );
      // }

      return null;
    },
  ));
}

// void main() {
//   runApp(MaterialApp(
//     initialRoute: '/',
//     routes: {
//       '/': (context) => const MainScreen(),
//       '/profile': (context) => const ProfileScreen(),
//       '/login': (context) => const LoginScreen(),
//       '/home': (context) => const HomeScreen(),
//     },
//   ));
// }
