import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:real_test/src/resources/routes/routes.dart';
import 'package:real_test/src/ui/widgets/custom_button.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  Widget get buildBody {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
              title: 'Feliratkozások',
              onTap: () {
                AutoRouter.of(context).push(
                  const SubscriptionsRoute(),
                );
              }),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
              title: 'Új feliratkozások',
              onTap: () {
                AutoRouter.of(context).push(
                  const NewSubscriptionsRoute(),
                );
              }),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody,
    );
  }
}
