import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BudgetDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/devprice.png'),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
              color: Theme.of(context).primaryColor,
            ),
          ),
          ItemDrawer('Configurações', '/settings'),
          ItemDrawer('Sobre', '/')
        ],
      ),
    );
  }
}

class ItemDrawer extends StatelessWidget {
  final String _name;
  final String _route;

  ItemDrawer(this._name, this._route);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(this._name),
      onTap: () => {
        debugPrint('esse eh o item: ' + _name),
        Navigator.pushNamed(context, this._route),
      },
    );
  }
}
