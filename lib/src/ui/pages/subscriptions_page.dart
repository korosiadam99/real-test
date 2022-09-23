import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_test/src/cubits/subscriptions/subscription_cubit.dart';
import 'package:real_test/src/models/subscription/subscription_model.dart';
import 'package:real_test/src/ui/widgets/cards/custom_subscription_card.dart';
import 'package:real_test/src/ui/widgets/custom_appbar.dart';
import 'package:real_test/src/ui/widgets/custom_loader.dart';

class SubscriptionsPage extends StatefulWidget {
  const SubscriptionsPage({Key? key}) : super(key: key);

  @override
  State<SubscriptionsPage> createState() => _SubscriptionsPageState();
}

class _SubscriptionsPageState extends State<SubscriptionsPage> {
  ///Since you don't have a DI container and SubscriptionCubit is not a Singleton,
  ///this would instantiate a new cubit for every newly rendered SubscriptionsPage.
  ///This breaks the apps states continuity, not having one state machine
  ///serving the widget every time when a new instance is created.
  final subscriptionCubit = SubscriptionCubit();

  Widget buildSomethingWentWrong() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Hiba történt az adatok betöltése közbe. Kérjük próbáld újra később.",
        ),
        const SizedBox(
          height: 15,
        ),
        IconButton(
          onPressed: (() => subscriptionCubit.getSubscriptions()),
          icon: const Icon(
            Icons.refresh,

            ///Prefer to have one class for all the colors the app uses and reference that class in code
            ///That way if the design team wants to modify the brand colors, you only have to rewrite it in one place
            ///It's generally a good thin to strive for a single source of truth, not just for colors.
            color: Colors.grey,
          ),
        )
      ],
    );
  }

  Widget buildSubscriptionList(List<SubscriptionModel> subscriptions) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: subscriptions.length,

        ///arrow functions make the code more readable, especially in a widget tree
        ///This is just an opinion, so not using arrow is not a mistake
        itemBuilder: (context, index) =>
            CustomSubscriptionCard(subscriptions[index]));
  }

  Widget get buildBody {
    return BlocConsumer<SubscriptionCubit, SubscriptionStates>(
      builder: ((context, state) {
        return state.when(
          initial: () => const CustomLoader(),
          loading: () => const CustomLoader(),
          loadSuccess: (subscriptions) => buildSubscriptionList(subscriptions),
          loadFailure: (errorMessage) => buildSomethingWentWrong(),
        );
      }),
      listener: (context, state) {},
      bloc: subscriptionCubit,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar("Feliratkozások"),
      body: buildBody,
    );
  }
}
