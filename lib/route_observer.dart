import 'package:flutter/material.dart';

// link to the tutorial
// https://medium.flutterdevs.com/tracking-screen-transition-by-route-observer-flutter-dadd8773699c

class MyRouteObserver extends RouteObserver<PageRoute<dynamic>> {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    _displayInfo('ROUTE_PUSH', route, previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    _displayInfo('ROUTE_REPLACE', newRoute, oldRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    _displayInfo('ROUTE_POP', route, previousRoute);
  }

  void _displayInfo(String action, Route<dynamic>? route, Route<dynamic>? previousRoute) {
    String? routeName = route?.settings.name;
    String? prevRouteName = previousRoute?.settings.name;
    // ignore: avoid_print
    print('$action: FROM $prevRouteName TO $routeName');
  }
}