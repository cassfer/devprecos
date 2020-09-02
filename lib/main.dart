import 'package:devprecos/views/budget_list.dart';
import 'package:devprecos/views/form_new_budget.dart';
import 'package:devprecos/views/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Devprecos());
}

/*class Devprecos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => BudgetList(),
        '/settings': (context) => Settings(),
        '/new_budget': (context) => FormNewBudget(),
      },
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        textTheme: GoogleFonts.robotoCondensedTextTheme(),
      ),
    );
  }
}*/


class Devprecos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Named Routing',
      routes: {
        '/': (context) => BudgetList(),
        '/settings': (context) => Settings(),
        '/new_budget': (context) => FormNewBudget(),
      },
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        textTheme: GoogleFonts.robotoCondensedTextTheme(),
      ),
    );
  }
}