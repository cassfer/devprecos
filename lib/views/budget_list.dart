import 'package:devprecos/components/budget_item.dart';
import 'package:devprecos/models/budget.dart';
import 'package:devprecos/views/budget_drawer.dart';
import 'package:flutter/material.dart';

class BudgetList extends StatefulWidget {
  List<Budget> _budgets = List();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BudgetListState();
  }
}

class BudgetListState extends State<BudgetList> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Dev Preços'),
      ),
      drawer: BudgetDrawer(),
      body: ListView.builder(
        itemCount: widget._budgets.length,
        itemBuilder: (context, index) {
          final budget = widget._budgets[index];
          return BudgetItem(budget);
        },
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 10, 10),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context, '/new_budget')
                .then((newBudget) => _update(newBudget));
          },
        ),
      ),
    );
  }

  _update(Budget budgetReceived) {
    if (budgetReceived != null) {
      setState(() {
        widget._budgets.add(budgetReceived);
        print(widget._budgets);
      });
    }
  }
}
