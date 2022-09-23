import 'package:flutter/material.dart';
import 'package:real_test/src/resources/routes/routes.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  late AppRouter _appRouter;

  @override
  void initState() {
    _appRouter = AppRouter();
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
