import 'package:flutter/material.dart';

class TextArea extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final String hint;
  final IconData icon;
  final bool next;
  final bool input;

  TextArea(this.title, this.hint,
      {this.icon, this.next, this.input, this.controller});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      controller: this.controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: this.title,
        hintText: this.hint,
        icon: Padding(
          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
          child: Icon(
            this.icon,
            size: 40,
          ),
        ),
      ),
      maxLines: 8,
      maxLength: 1000,
      keyboardType: TextInputType.multiline,
    );
  }
}
