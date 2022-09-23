import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatefulWidget with PreferredSizeWidget {
  final String title;
  const CustomAppbar(this.title, {Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: AutoLeadingButton(
        color: Theme.of(context).primaryColor,
      ),
      title: Text(
        widget.title,
        style: TextStyle(color: Theme.of(context).primaryColor),
      ),
    );
  }
}
