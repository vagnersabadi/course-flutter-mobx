import 'package:aula_04/models/client.dart';
import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  var client = Client();

  @computed
  bool get isValid {
    return validateName() == null && validateEmail() == null;
  }

  String validateName() {
    if (client.name == null || client.name.isEmpty) {
      return 'Campo obrigatório';
    } else if (client.name.length < 3) {
      return 'Necesário ser maior que 3 caracteres';
    }
    return null;
  }

  String validateEmail() {
    if (client.email == null || client.email.isEmpty) {
      return 'Campo obrigatório';
    } else if (!client.email.contains('@')) {
      return 'Email inválido';
    }
    return null;
  }

  String validateCpf() {
    if (client.cpf == null || client.name.isEmpty) {
      return 'Campo obrigatório';
    } else if (client.cpf.length < 3) {
      return 'Necesário ser maior que 3 caracteres';
    }
    return null;
  }

  dispose() {}
}
