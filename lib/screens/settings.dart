import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Configurações'),
        ),
        body: Container(
          margin: const EdgeInsets.all(15),
          child: Form(
            child: Column(
              children: [TextFormField()],
            ),
          ),
        ));
  }
}
