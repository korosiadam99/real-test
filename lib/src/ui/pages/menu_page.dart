import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:real_test/src/resources/routes/routes.dart';
import 'package:real_test/src/ui/widgets/custom_button.dart';

///Only use Stful Widgets when you want the widget to have some internal state you want to modify
///Stless widgets are more performant, and have less boilerplate to comprehend
class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  ///Helper functions will compromise flutters ability to optimally reload chunks of the widget tree
  ///see: https://www.youtube.com/watch?v=IOyq-eTRhvo
  Widget get buildBody {
    return Container();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(

                ///This text can't be translated
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
      ));
}
