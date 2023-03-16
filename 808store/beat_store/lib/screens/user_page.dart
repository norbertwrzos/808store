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
              const SizedBox(height: 20),
              SizedBox(
                  width: double.infinity,
                  child: CircleAvatar(
                      backgroundImage: AssetImage(userPhotoPath), radius: 80)),
              const SizedBox(height: 20),
              Text(userName, style: Theme.of(context).textTheme.headline6),
              const SizedBox(height: 5),
              Text(userEmail, style: Theme.of(context).textTheme.headline4),
              const SizedBox(height: 20),
              SlideGestureButton(
                  text: "Edit profile",
                  onPressed: (() {}),
                  width: 150,
                  height: 50),
              const SizedBox(height: 30),
              SettingsContainer(
                  titleText: "Purchases",
                  labelText: "Purchase history",
                  myWidgetBuilder: () =>
                      const Icon(Icons.history, color: Colors.white)),
              SettingsContainer(
                  titleText: "Payment",
                  labelText: "Payment method",
                  myWidgetBuilder: () =>
                      const Icon(Icons.payment_rounded, color: Colors.white)),
              SettingsContainer(
                  titleText: "Invite link",
                  labelText: "Invite friends, get 10% off!",
                  myWidgetBuilder: () =>
                      const Icon(Icons.insert_link_rounded, color: Colors.white)),
              SettingsContainer(
                  titleText: "Notifications",
                  labelText: "Turn on notifications",
                  myWidgetBuilder: () => const MySwitch()),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Log out", style: Theme.of(context).textTheme.headline4)
                ],
              ),
              const SizedBox(height: 5),
              Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Theme.of(context).colorScheme.background),
                  child: Row(
                    children: [
                      Text(
                        "Log out",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.red.shade800,
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.logout,
                        color: Colors.red.shade800,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
