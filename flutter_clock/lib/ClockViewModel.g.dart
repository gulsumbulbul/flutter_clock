// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ClockViewModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$clockViewModel on ClockViewModel, Store {
  Computed<String>? _$hoursStringComputed;

  @override
  String get hoursString =>
      (_$hoursStringComputed ??= Computed<String>(() => super.hoursString,
              name: 'ClockViewModel.hoursString'))
          .value;
  Computed<String>? _$minutesStringComputed;

  @override
  String get minutesString =>
      (_$minutesStringComputed ??= Computed<String>(() => super.minutesString,
              name: 'ClockViewModel.minutesString'))
          .value;
  Computed<String>? _$secondStringComputed;

  @override
  String get secondString =>
      (_$secondStringComputed ??= Computed<String>(() => super.secondString,
              name: 'ClockViewModel.secondString'))
          .value;

  late final _$ClockViewModelActionController =
      ActionController(name: 'ClockViewModel', context: context);

  @override
  void updateTime(DateTime now) {
    final _$actionInfo = _$ClockViewModelActionController.startAction(
        name: 'ClockViewModel.updateTime');
    try {
      return super.updateTime(now);
    } finally {
      _$ClockViewModelActionController.endAction(_$actionInfo);
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
