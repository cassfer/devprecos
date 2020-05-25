import 'package:flutter/material.dart';

class BudgetItem extends StatelessWidget {
  final String _budgetName;
  final String _price;

  BudgetItem(this._budgetName, this._price);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.fromLTRB(8.0, 8.0, 0, 8.0),
        child: ListTile(
          leading: Icon(
            Icons.attach_money,
            size: 40,
          ),
          trailing: IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){
              debugPrint('nome: '+ _budgetName + ' foi cliado');
            }
          ),
          title: Text(this._budgetName, style: TextStyle(fontSize: 20),),
          subtitle: Text('R\$ ' + this._price, style: TextStyle(fontSize: 15),),
        ),
      ),
    );
  }
}
