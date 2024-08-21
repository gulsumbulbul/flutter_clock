// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ClockModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ClockModel on ClockModelBase, Store {
  late final _$hoursStringAtom =
      Atom(name: 'ClockModelBase.hoursString', context: context);

  @override
  String get hoursString {
    _$hoursStringAtom.reportRead();
    return super.hoursString;
  }

  @override
  set hoursString(String value) {
    _$hoursStringAtom.reportWrite(value, super.hoursString, () {
      super.hoursString = value;
    });
  }

  late final _$minutesStringAtom =
      Atom(name: 'ClockModelBase.minutesString', context: context);

  @override
  String get minutesString {
    _$minutesStringAtom.reportRead();
    return super.minutesString;
  }

  @override
  set minutesString(String value) {
    _$minutesStringAtom.reportWrite(value, super.minutesString, () {
      super.minutesString = value;
    });
  }

  late final _$secondStringAtom =
      Atom(name: 'ClockModelBase.secondString', context: context);

  @override
  String get secondString {
    _$secondStringAtom.reportRead();
    return super.secondString;
  }

  @override
  set secondString(String value) {
    _$secondStringAtom.reportWrite(value, super.secondString, () {
      super.secondString = value;
    });
  }

  late final _$ClockModelBaseActionController =
      ActionController(name: 'ClockModelBase', context: context);

  @override
  void updateTime(DateTime now) {
    final _$actionInfo = _$ClockModelBaseActionController.startAction(
        name: 'ClockModelBase.updateTime');
    try {
      return super.updateTime(now);
    } finally {
      _$ClockModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
hoursString: ${hoursString},
minutesString: ${minutesString},
secondString: ${secondString}
    ''';
  }
}
