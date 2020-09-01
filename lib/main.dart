import 'package:devprecos/views/budget_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:devprecos/views/settings.dart';

void main() {
  runApp(Devprecos());
}

class Devprecos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Dev preços",
      home: Settings(),
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        textTheme: GoogleFonts.robotoCondensedTextTheme(),
      ),
    );
  }
}
