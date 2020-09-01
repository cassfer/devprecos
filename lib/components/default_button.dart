import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String _name;
  final Function action;

  DefaultButton(this._name, this.action);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.fromLTRB(80, 60, 80, 0),
      //padding: const EdgeInsets.fromLTRB(30, 24, 24, 0),
      child: RaisedButton(
        onPressed: () => this.action,
        child: Text(this._name),
      ),
    );
  }
}
