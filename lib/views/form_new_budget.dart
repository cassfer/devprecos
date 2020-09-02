import 'package:devprecos/components/default_input.dart';
import 'package:devprecos/components/text_area.dart';
import 'package:devprecos/models/budget.dart';
import 'package:flutter/material.dart';

class FormNewBudget extends StatelessWidget {
  final TextEditingController _controllerNameField = TextEditingController();
  final TextEditingController _controllerTimeField = TextEditingController();
  final TextEditingController _controllerNoteField = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final Budget oldBudget = ModalRoute.of(context).settings.arguments;

    if (oldBudget != null) {
      this._controllerNameField.text = oldBudget.title;
      this._controllerTimeField.text = oldBudget.time.toString();
      this._controllerNoteField.text = oldBudget.note;
    }

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: oldBudget == null
            ? Text('Novo Orçamento')
            : Text('Editar Orçamento'),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(8, 24, 24, 24),
        child: Form(
          child: ListView(
            children: <Widget>[
              DefaultInput(
                'Nome do projeto:',
                'Aplicativo Microsoft',
                icon: Icons.local_offer,
                next: true,
                input: true,
                controller: _controllerNameField,
              ),
              SizedBox(
                height: 16,
              ),
              DefaultInput(
                'Duração do projeto (em horas)',
                '0000',
                icon: Icons.timer,
                next: true,
                controller: _controllerTimeField,
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: TextArea(
                  'Observações',
                  'Insira aqui informações adicionais',
                  icon: Icons.info,
                  next: false,
                  controller: _controllerNoteField,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(80, 60, 80, 0),
                child: RaisedButton(
                  child: Text('cadastrar'),
                  onPressed: () => _createBudget(context),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _createBudget(BuildContext context) {
    String title = _controllerNameField.text;
    int time = int.tryParse(_controllerTimeField.text);
    String note = _controllerNoteField.text;

    if (title != null && time != null) {
      final createdBudget = Budget(title, time, note);
      debugPrint('creating budget');
      debugPrint('$createdBudget');
      Navigator.pop(context, createdBudget);
    }
  }
}
