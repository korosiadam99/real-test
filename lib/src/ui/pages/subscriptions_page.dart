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
  SubscriptionCubit subscriptionCubit = SubscriptionCubit();

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
      itemBuilder: (context, index) {
        return CustomSubscriptionCard(subscriptions[index]);
      },
    );
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
