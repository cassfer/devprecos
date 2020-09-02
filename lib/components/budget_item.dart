import 'package:devprecos/models/budget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BudgetItem extends StatelessWidget {
  String _budgetName;
  String _price;
  Budget budget;

  BudgetItem(Budget budget) {
    this.budget = budget;
    this._budgetName = budget.title;
    this._price = budget.price.toString();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        _edit(context, this.budget);
      },
      child: Card(
        child: Container(
          padding: EdgeInsets.fromLTRB(8.0, 8.0, 0, 8.0),
          child: ListTile(
            leading: Icon(
              Icons.attach_money,
              size: 40,
            ),
            trailing: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  _edit(context, this.budget);
                }),
            title: Text(
              this._budgetName,
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text(
              'R\$ ' + this._price,
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }

  _edit(context, sendBudget) {
      Navigator.pushNamed(context, '/new_budget', arguments: sendBudget).then((budgetEdited)=>{
        BudgetItem(budgetEdited),
      });
  }
}
