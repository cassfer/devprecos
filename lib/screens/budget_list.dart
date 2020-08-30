import 'package:devprecos/models/budget_item.dart';
import 'package:devprecos/screens/budget_drawer.dart';
import 'package:flutter/material.dart';

class BudgetList extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Dev Preços'),
      ),
      drawer: BudgetDrawer(),
      body: ListView(
        children: [
          BudgetItem('App Farmaformula', '1000'),
          BudgetItem('Relatorios Nutra', '1000'),
        ],
      ),

      floatingActionButton: Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 10, 10),
        child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              debugPrint("mano");
            },
          )
      )
    );
  }
}
