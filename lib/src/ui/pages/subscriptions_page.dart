import 'package:flutter/material.dart';
import 'package:real_test/src/cubits/subscriptions/subscription_cubit.dart';

class SubscriptionsPage extends StatefulWidget {
  const SubscriptionsPage({Key? key}) : super(key: key);

  @override
  State<SubscriptionsPage> createState() => _SubscriptionsPageState();
}

class _SubscriptionsPageState extends State<SubscriptionsPage> {
  SubscriptionCubit subscriptionCubit = SubscriptionCubit();

  Widget get buildBody {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody,
    );
  }
}
