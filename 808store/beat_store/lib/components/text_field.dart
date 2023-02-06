import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

Flutter class textField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  const textField({super.key,
  required this.controller,
  required this.hintText,
  required this.obscureText,});

  @override
  Widget build(BuildContext context) {
    return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37),
                  color: const Color(0xFF333333),
                ),
                child: TextFormField(
                  controller: controller,
                  obscureText: obscureText,
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
                      hintText: hintText,
                      hintStyle: Theme.of(context).textTheme.headline4),
                ),
            );
              
  }
}