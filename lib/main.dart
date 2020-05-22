import 'package:flutter/material.dart';

void main() {
  runApp(Devprecos());
}

class Devprecos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dev Preços'),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text('DrawerHeader'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
