import 'package:intl/intl.dart';

class NumberFormatter {
  static formatAsCurrency(double number, [String locale = 'en_US']) {
    var f = NumberFormat("###.0#", locale);
    return f.format(number);
  }
}
