import 'package:flutter/material.dart';
import 'package:real_test/src/ui/widgets/custom_appbar.dart';

class NewSubscriptionsPage extends StatefulWidget {
  const NewSubscriptionsPage({Key? key}) : super(key: key);

  @override
  State<NewSubscriptionsPage> createState() => _NewSubscriptionsPageState();
}

class _NewSubscriptionsPageState extends State<NewSubscriptionsPage> {
  Widget get buildBody {
    return Center(
      child: Icon(
        Icons.lock,
        size: 40,
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar("Új feliratkozások"),
      body: buildBody,
    );
  }
}
