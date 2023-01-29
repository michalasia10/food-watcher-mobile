import 'package:date_format/date_format.dart';
import 'package:intl/intl.dart';

String getCurrentDate(int timestamp) {
  var date = new DateTime.fromMillisecondsSinceEpoch(timestamp);
  return getTranslatedWeekday(date)! + ", " + formatDate(date, [dd, '.', mm, '.', yyyy]);
}

String? getTranslatedWeekday(DateTime dateTime) {
  var weekdayFormatter = DateFormat('EEEE');
  var weekday = weekdayFormatter.format(dateTime).toLowerCase();
  return weekdays[weekday];
}

var weekdays = {
  "monday": "Poniedziałek",
  "tuesday": "Wtorek",
  "wednesday": "Środa",
  "thursday": "Czwartek",
  "friday": "Piątek",
  "saturday": "Sobota",
  "sunday": "Niedziela"
};
