import 'package:beat_store/screens/my_cart.dart';
import 'package:beat_store/screens/user_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../components/settings_container.dart';
import '../components/switch.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
                minimum: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.only(top: 15.0, right: 60),
                        child: Text(
                          "Settings",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ]),
                    const SizedBox(height: 20),
                    SettingsContainer(
                        titleText: "User",
                        labelText: "Edit my profile",
                        toNextPage: (() => UserPage(
                            userPhotoPath: "assets/images/dom.jpg",
                            userName: "User",
                            userEmail: "user@email.pl")),
                        myWidgetBuilder: () =>
                            const Icon(Icons.person, color: Colors.white)),
                    SettingsContainer(
                        titleText: "Purchases",
                        labelText: "Purchase history",
                        toNextPage: () => MyCart(),
                        myWidgetBuilder: () =>
                            const Icon(Icons.history, color: Colors.white)),
                    SettingsContainer(
                        titleText: "Payment",
                        labelText: "Payment method",
                        toNextPage: () => MyCart(),
                        myWidgetBuilder: () => const Icon(Icons.payment_rounded,
                            color: Colors.white)),
                    SettingsContainer(
                        titleText: "Notifications",
                        labelText: "Turn on notifications",
                        toNextPage: () => MyCart(),
                        myWidgetBuilder: () => const MySwitch()),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Log out",
                            style: Theme.of(context).textTheme.headline4)
                      ],
                    ),
                    const SizedBox(height: 5),
                    Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(15),
                        color: Theme.of(context).colorScheme.background,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(15),
                          onTap: (() {
                            FirebaseAuth.instance.signOut();
                          }),
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Log out",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.normal,
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
                        )),
                  ],
                ))));
  }
}
