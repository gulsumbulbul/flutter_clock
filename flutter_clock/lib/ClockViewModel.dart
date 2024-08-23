import 'package:mobx/mobx.dart';
import 'ClockModel.dart';

part 'ClockViewModel.g.dart';

class clockViewModel = ClockViewModel with _$clockViewModel;

abstract class ClockViewModel with Store {
  final ClockModel _clockModel = ClockModel();

  @computed
  String get hoursString => _clockModel.hoursString;

  @computed
  String get minutesString => _clockModel.minutesString;

  @computed
  String get secondString => _clockModel.secondString;

  @action
  void updateTime(DateTime now) {
    _clockModel.updateTime(now);
  }
}
