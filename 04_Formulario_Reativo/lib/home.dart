import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'controller.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

final controller = Controller();

class _MyHomePageState extends State<MyHomePage> {
  _texField({String labelText, onChanged, Function() errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Observer(
                builder: (_) {
                  return _texField(
                      labelText: 'name',
                      onChanged: controller.client.changeName,
                      errorText: controller.validateName);
                },
              ),
              SizedBox(
                height: 20,
              ),
              Observer(
                builder: (_) {
                  return _texField(
                      labelText: 'email',
                      onChanged: controller.client.changeEmail,
                      errorText: controller.validateEmail);
                },
              ),
              SizedBox(
                height: 20,
              ),
              Observer(
                builder: (_) {
                  return _texField(
                      labelText: 'cpf',
                      onChanged: controller.client.changeCpf,
                      errorText: controller.validateCpf);
                },
              ),
              SizedBox(
                height: 20,
              ),
              Observer(
                builder: (_) {
                  return RaisedButton(
                    onPressed: controller.isValid ? () {} : null,
                    child: Text('Salvar'),
                  );
                },
              )
            ],
          ),
        ));
  }
}
