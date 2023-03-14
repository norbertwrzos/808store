import 'package:beat_store/components/settings_container.dart';
import 'package:beat_store/components/slide_gesture_buton.dart';
import 'package:beat_store/components/switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserPage extends StatelessWidget {
  UserPage(
      {super.key,
      required this.userPhotoPath,
      required this.userName,
      required this.userEmail});
  String userPhotoPath;
  String userName;
  String userEmail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            minimum: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 20),
                SizedBox(
                    width: double.infinity,
                    child: CircleAvatar(
                        backgroundImage: AssetImage(userPhotoPath),
                        radius: 80)),
                SizedBox(height: 20),
                Text(userName, style: Theme.of(context).textTheme.headline6),
                SizedBox(height: 5),
                Text(userEmail, style: Theme.of(context).textTheme.headline4),
                SizedBox(height: 20),
                SlideGestureButton(
                    text: "Edit profile",
                    onPressed: (() {}),
                    width: 150,
                    height: 50),
                SizedBox(height: 30),
                SettingsContainer(
                    titleText: "Purchases",
                    labelText: "Purchase history",
                    myWidgetBuilder: () => Icon(Icons.history)),
                SettingsContainer(
                    titleText: "Payment",
                    labelText: "Payment method",
                    myWidgetBuilder: () => Icon(Icons.payment_rounded)),
                SettingsContainer(
                  titleText: "Notifications",
                  labelText: "Turn on notifications",
                  myWidgetBuilder: () => const MySwitch()
                ),
                SettingsContainer(
                    titleText: "Invite link",
                    labelText: "Invite friends, get 10% off!",
                    myWidgetBuilder: () => Icon(Icons.insert_link_rounded)),
              ],
            )),
      ),
    );
  }
}
