import 'package:mobx/mobx.dart';

part 'ClockModel.g.dart';

class ClockModel = ClockModelBase with _$ClockModel;

abstract class ClockModelBase with Store {
  @observable
  String hoursString = "00";
  @observable
  String minutesString = "00";
  @observable
  String secondString = "00";

  @action
  void updateTime(DateTime now) {
    hoursString = _formatTime(now.hour);
    minutesString = _formatTime(now.minute);
    secondString = _formatTime(now.second);
  }

  String _formatTime(int time) {
    return time.toString().padLeft(2, '0');
  }
}
