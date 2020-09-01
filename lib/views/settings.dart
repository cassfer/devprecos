import 'package:devprecos/components/default_button.dart';
import 'package:devprecos/components/default_input.dart';
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
        margin: const EdgeInsets.fromLTRB(8, 24, 24, 24),
        child: Form(
          child: ListView(
            children: [
              DefaultInput(
                'Salario mensal:',
                '0000.00',
                icon: Icons.monetization_on,
                next: true,
              ),
              SizedBox(
                height: 16,
              ),
              DefaultInput(
                'Horas mensais trabalhadas:',
                '0000',
                icon: Icons.access_time,
                next: true,
              ),
              SizedBox(
                height: 16,
              ),
              DefaultInput(
                'Valor mínimo',
                '000.00',
                icon: Icons.monetization_on,
              ),
              DefaultButton('Salvar', null),
            ],
          ),
        ),
      ),
    );
  }
}
