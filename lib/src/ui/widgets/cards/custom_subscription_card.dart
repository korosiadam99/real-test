import 'package:flutter/material.dart';
import 'package:real_test/src/models/subscription/subscription_model.dart';
import 'package:real_test/src/resources/helpers/house_type_helper.dart';

class CustomSubscriptionCard extends StatefulWidget {
  final SubscriptionModel subscriptionModel;
  const CustomSubscriptionCard(this.subscriptionModel, {Key? key})
      : super(key: key);

  @override
  State<CustomSubscriptionCard> createState() => _CustomSubscriptionCardState();
}

class _CustomSubscriptionCardState extends State<CustomSubscriptionCard> {
  TextStyle textStyle = TextStyle(fontSize: 12, color: Colors.blueGrey[900]);

  Widget buildIconButton(IconData icon, VoidCallback onTap) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        icon,
        color: Colors.blueGrey[900],
        size: 30,
      ),
    );
  }

  Widget get buildIcons {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildIconButton(Icons.delete, () {}),
        buildIconButton(Icons.notifications, () {}),
        buildIconButton(Icons.edit, () {})
      ],
    );
  }

  Widget get buildInfo {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                ...widget.subscriptionModel.locations
                    .map(
                      (e) => Text(
                          "${e.adminLevels.city}${widget.subscriptionModel.locations.last == e ? "" : ", "}"),
                    )
                    .toList(),
              ],
            ),
          ),
          const Divider(
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                const Expanded(
                  child: Text("Ár"),
                ),
                Expanded(
                    child: Text(
                        "${widget.subscriptionModel.minPrice ~/ 1000000} - ${widget.subscriptionModel.maxPrice ~/ 1000000} millió Forint"))
              ],
            ),
          ),
          const Divider(
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                const Expanded(
                  child: Text("Alapterület"),
                ),
                Expanded(
                    child:
                        Text("${widget.subscriptionModel.minFloorArea} +  m2"))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget get buildHeader {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.subscriptionModel.name,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Row(
          children: [
            Text(
              "${HouseTypeHelper.type(widget.subscriptionModel.assignmentType)} ",
            ),
            ...widget.subscriptionModel.estateTypes
                .map(
                  (e) => Text("${HouseTypeHelper.estateType(e)} "),
                )
                .toList(),
          ],
        ),
      ],
    );
  }

  Widget get buildBody {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildHeader,
        const SizedBox(
          height: 15,
        ),
        buildInfo,
        const SizedBox(
          height: 15,
        ),
        buildIcons,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: DefaultTextStyle(
        style: textStyle,
        child: buildBody,
      ),
    );
  }
}
