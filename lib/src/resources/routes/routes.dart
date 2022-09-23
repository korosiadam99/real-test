import 'package:auto_route/auto_route.dart';
import 'package:real_test/src/ui/pages/menu_page.dart';
import 'package:real_test/src/ui/pages/new_subscriptions_page.dart';
import 'package:real_test/src/ui/pages/subscriptions_page.dart';

export 'routes.gr.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(page: MenuPage, path: '/'),
  AutoRoute(page: SubscriptionsPage, path: '/subs'),
  AutoRoute(page: NewSubscriptionsPage, path: '/new')
])
class $AppRouter {}
