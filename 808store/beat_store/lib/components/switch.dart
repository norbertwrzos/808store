import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
      activeColor: Theme.of(context).colorScheme.primary,
        value: isSwitched,
        onChanged: ((value) {
          setState(() {
            isSwitched = value;
          });
        }));
  }
}
