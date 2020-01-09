// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on ControllerBase, Store {
  final _$nomeAtom = Atom(name: 'ControllerBase.nome');

  @override
  String get nome {
    _$nomeAtom.context.enforceReadPolicy(_$nomeAtom);
    _$nomeAtom.reportObserved();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.context.conditionallyRunInAction(() {
      super.nome = value;
      _$nomeAtom.reportChanged();
    }, _$nomeAtom, name: '${_$nomeAtom.name}_set');
  }

  final _$sobrenomeAtom = Atom(name: 'ControllerBase.sobrenome');

  @override
  String get sobrenome {
    _$sobrenomeAtom.context.enforceReadPolicy(_$sobrenomeAtom);
    _$sobrenomeAtom.reportObserved();
    return super.sobrenome;
  }

  @override
  set sobrenome(String value) {
    _$sobrenomeAtom.context.conditionallyRunInAction(() {
      super.sobrenome = value;
      _$sobrenomeAtom.reportChanged();
    }, _$sobrenomeAtom, name: '${_$sobrenomeAtom.name}_set');
  }

  final _$ControllerBaseActionController =
      ActionController(name: 'ControllerBase');

  @override
  dynamic mudarNome(String newName) {
    final _$actionInfo = _$ControllerBaseActionController.startAction();
    try {
      return super.mudarNome(newName);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarSobrenome(String newName) {
    final _$actionInfo = _$ControllerBaseActionController.startAction();
    try {
      return super.mudarSobrenome(newName);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
