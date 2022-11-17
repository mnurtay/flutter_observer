import 'package:demo/route_observer.dart';
import 'package:demo/screen_1.dart';
import 'package:demo/screen_2.dart';
import 'package:demo/screen_3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final MyRouteObserver routeObserver = MyRouteObserver();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorObservers: [routeObserver],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings) {
        Widget page = const Scaffold();
        if (settings.name == '/') {
          page = const Screen1();
        } else if (settings.name == '/screen2') {
          page = const Screen2();
        } else if (settings.name == '/screen3') {
          page = const Screen3();
        }
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => page,
        );
      },
    );
  }
}

