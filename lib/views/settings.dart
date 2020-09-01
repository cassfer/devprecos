import 'package:devprecos/models/settings_item.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Configurações')
        ),
        body: Container(
          margin: const EdgeInsets.fromLTRB(0, 24, 24, 24),
          child: Form(
            child: ListView(
              children: [
                SettingsItem(
                  title: 'Salario mensal:',
                  hint: '0000.00',
                  icon: Icons.monetization_on,
                ),
                SizedBox(height: 16,),
                SettingsItem(
                  title: 'Horas Mensais:',
                  hint: '0000',
                ),
              ],
            ),
          ),
        ));
  }
}
