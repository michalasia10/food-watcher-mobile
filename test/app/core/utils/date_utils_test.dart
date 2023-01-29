import 'package:diet_maker/core/utils/date_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GIVEN date utils', () {
    test(
        'WHEN getCurrentDate called THEN should return correct date with WEEKDAY, DD.MM.YYYY format',
            () async {
          expect(
            getCurrentDate(DateTime(2022, 6, 28).millisecondsSinceEpoch),
            'Wtorek, 28.06.2022',
          );
          expect(
            getCurrentDate(DateTime(2020, 12, 24).millisecondsSinceEpoch),
            'Czwartek, 24.12.2020',
          );
        });

    test(
        'WHEN getTranslatedWeekday called THEN should return correct weekday in polish',
        () async {
      expect(
        getTranslatedWeekday(DateTime(2022, 6, 28)),
        weekdays['tuesday'],
      );
      expect(
        getTranslatedWeekday(DateTime(2020, 12, 24)),
        weekdays['thursday'],
      );
    });
  });
}
