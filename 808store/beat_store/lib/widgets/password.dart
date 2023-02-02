import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    required this.fieldKey,
    required this.hintText,
    required this.hintStyle,
    required this.onSaved,
    required this.onFieldSubmitted,
  });

  final Key fieldKey;
  final String hintText;
  final hintStyle;
  final FormFieldSetter<String> onSaved;
  final ValueChanged<String> onFieldSubmitted;

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.fieldKey,
      obscureText: _obscureText,
      onSaved: widget.onSaved,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            )),
        hintText: widget.hintText,
        hintStyle: widget.hintStyle,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child:
              new Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
        ),
      ),
    );
  }
}
