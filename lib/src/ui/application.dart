import 'package:flutter/material.dart';
import 'package:real_test/src/resources/routes/routes.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  ///https://stackoverflow.com/questions/59611811/is-there-any-difference-between-assigning-value-to-the-variable-inside-of-initst
  ///Assigning things when declaring them or assigning them in initState:
  ///either way is fine, but prefer picking one and sticking with it.
  ///you assign AppRouter in initState, but in SubscriptionsPage you:
  ///SubscriptionCubit subscriptionCubit = SubscriptionCubit();
  ///Having consistency in the code makes it readable
  final AppRouter _appRouter = AppRouter();

  @override
  void initState() {
    // _appRouter = AppRouter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Real Test',
      routerDelegate: _appRouter.delegate(initialRoutes: [
        const MenuRoute(),
      ]),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
