import 'package:progetto5/models/sex_model.dart';

class User {
  String? name;
  String? surname;
  String? email;
  String? phone;
  Sex? sex;
  double? ral;

  User({
    this.name,
    this.surname,
    this.email,
    this.phone,
    this.sex,
    this.ral,
  });
}
