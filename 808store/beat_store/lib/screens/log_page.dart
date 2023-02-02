import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:beat_store/widgets/password.dart';

class LogPage extends StatefulWidget {
  const LogPage({super.key});

  @override
  State<LogPage> createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {
  late String _password;
  final _passwordFieldKey = GlobalKey<FormFieldState<String>>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Container(
              //   height: 50,
              //   width: 50,
              //   child: FloatingActionButton(
              //     elevation: 5,
              //     onPressed: () {
              //       Navigator.pop(context);
              //     },
              //     backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              //     child: const Icon(Icons.arrow_back_ios_new),
              //   ),
              // ),
              Container(
                margin:
                    const EdgeInsets.only(top: 15.0, bottom: 15.0, right: 60.0),
                child: Text(
                  "Unlock Unexplored Rythms.",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              SizedBox(height: 30),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "808store.",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37),
                  color: Color(0xFF333333),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      hintText: 'Enter your email',
                      hintStyle: Theme.of(context).textTheme.headline4),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37),
                  color: Color(0xFF333333),
                ),
                child: PasswordField(
                  fieldKey: _passwordFieldKey,
                  onFieldSubmitted: (String value) {
                    setState(
                      () {
                        _password = value;
                      },
                    );
                  },
                  hintText: "Enter your password",
                  onSaved: (String? newValue) {},
                  hintStyle: Theme.of(context).textTheme.headline4,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      const Size(150, 50),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(37.0))),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(188, 98, 255, 1))),
                onPressed: () {},
                child: Text(
                  'Log in',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              TextButton(
                  child: Text("Return"),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
