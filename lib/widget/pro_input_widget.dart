import 'package:flutter/material.dart';

class ProInputWidget extends StatefulWidget {
  final bool obscureText;

  final String hintText;

  final IconData iconData;

  final ValueChanged<String> onChanged;

  final TextStyle textStyle;

  final TextEditingController controller;

  ProInputWidget(
      {Key key,
      this.obscureText = false,
      this.hintText,
      this.onChanged,
      this.textStyle,
      this.controller,
      this.iconData})
      : super(key: key);

  @override
  _ProInputWidgetState createState() => _ProInputWidgetState();
}

class _ProInputWidgetState extends State<ProInputWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      onChanged: widget.onChanged,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
          hintText: widget.hintText,
          icon: widget.iconData == null ? null : Icon(widget.iconData)),
    );
  }
}
