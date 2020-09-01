import 'package:flutter/material.dart';

class DefaultInput extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final String hint;
  final IconData icon;
  final bool next;
  final bool input;

  DefaultInput(this.title, this.hint,
      {this.icon, this.next, this.input, this.controller});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextFormField(
      controller: this.controller,
      decoration: InputDecoration(
          labelText: this.title,
          hintText: this.hint,
          icon: Padding(
            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
            child: Icon(
              this.icon,
              size: 40,
            ),
          )),
      style: TextStyle(fontSize: 18),
      keyboardType:
          this.input == true ? TextInputType.name : TextInputType.number,
      textInputAction:
          this.next == true ? TextInputAction.next : TextInputAction.done,
      onFieldSubmitted: (_) => {
        if (this.next)
          {
            FocusScope.of(context).nextFocus(),
          }
        else
          {
            FocusScope.of(context).unfocus(),
          }
      },
    );
  }
}
