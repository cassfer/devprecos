import 'package:flutter/material.dart';

class SettingsItem extends StatelessWidget{
  final String title;
  final String hint;
  final IconData icon;

  SettingsItem({this.title, this.hint, this.icon});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextFormField(
      decoration: InputDecoration(
        labelText: this.title,
        hintText: this.hint,
        icon: Padding(
          padding: EdgeInsets.fromLTRB(0, 18, 0, 0),
          child: Icon(this.icon, size: 40,),
        )
      ),
      style: TextStyle(
        fontSize: 18
      ),
      keyboardType: TextInputType.number,
    );
  }

}