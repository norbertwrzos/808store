import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SettingsContainer extends StatelessWidget {
  const SettingsContainer(
      {super.key,
      required this.titleText,
      required this.labelText,
      required this.myWidgetBuilder});
  final String titleText;
  final String labelText;
  final Widget Function() myWidgetBuilder;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(titleText, style: Theme.of(context).textTheme.headline4)
          ],
        ),
        SizedBox(height: 5),
        Material(
          elevation: 10,
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.shade800,
          child: InkWell(
            borderRadius: BorderRadius.circular(15),
            onTap: () {},
            child: Container(
              width: double.infinity,
              height: 60,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Text(labelText, style: Theme.of(context).textTheme.headline5),
                  Spacer(),
                  myWidgetBuilder(),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
