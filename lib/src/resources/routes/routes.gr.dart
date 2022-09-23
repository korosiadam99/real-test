// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../ui/pages/menu_page.dart' as _i1;
import '../../ui/pages/new_subscriptions_page.dart' as _i3;
import '../../ui/pages/subscriptions_page.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    MenuRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MenuPage(),
      );
    },
    SubscriptionsRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SubscriptionsPage(),
      );
    },
    NewSubscriptionsRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.NewSubscriptionsPage(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          MenuRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          SubscriptionsRoute.name,
          path: '/subs',
        ),
        _i4.RouteConfig(
          NewSubscriptionsRoute.name,
          path: '/new',
        ),
      ];
}

/// generated route for
/// [_i1.MenuPage]
class MenuRoute extends _i4.PageRouteInfo<void> {
  const MenuRoute()
      : super(
          MenuRoute.name,
          path: '/',
        );

  static const String name = 'MenuRoute';
}

/// generated route for
/// [_i2.SubscriptionsPage]
class SubscriptionsRoute extends _i4.PageRouteInfo<void> {
  const SubscriptionsRoute()
      : super(
          SubscriptionsRoute.name,
          path: '/subs',
        );

  static const String name = 'SubscriptionsRoute';
}

/// generated route for
/// [_i3.NewSubscriptionsPage]
class NewSubscriptionsRoute extends _i4.PageRouteInfo<void> {
  const NewSubscriptionsRoute()
      : super(
          NewSubscriptionsRoute.name,
          path: '/new',
        );

  static const String name = 'NewSubscriptionsRoute';
}
