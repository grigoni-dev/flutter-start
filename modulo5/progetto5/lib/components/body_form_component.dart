import 'package:flutter/material.dart';
import 'package:progetto5/components/form_component.dart';
import 'package:progetto5/components/text_field_form_component.dart';
import 'package:progetto5/models/sex_model.dart';
import 'package:progetto5/models/user_model.dart';
import 'package:progetto5/pages/home_page.dart';

class BodyFormComponent extends StatefulWidget {
  @override
  _BodyFormComponentState createState() => _BodyFormComponentState();
}

class _BodyFormComponentState extends State<BodyFormComponent> {
  User user = User(
    ral: 16000,
  );
  bool conditionsAccepted = false;

  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 190,
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                personalDataForm(),
                divider(),
                sexForm(),
                divider(),
                ralForm(),
                divider(),
                temsAndConditionsForm(),
                divider(),
                registrationButton(),
                divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget personalDataForm() => FormComponent(
        title: "Dati Anagrafici",
        child: Column(
          children: [
            TextFieldForm(
              textController: nameController,
              labelText: "Nome",
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 10),
            TextFieldForm(
              textController: surnameController,
              labelText: "Cognome",
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 10),
            TextFieldForm(
              textController: emailController,
              labelText: "Email",
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10),
            TextFieldForm(
              textController: phoneController,
              labelText: "Telefono",
              keyboardType: TextInputType.phone,
            ),
          ],
        ),
      );

  Widget sexForm() => FormComponent(
        title: "Sesso",
        child: Column(
          children: [
            RadioListTile<Sex>(
              value: Sex.M,
              groupValue: user.sex,
              activeColor: Colors.pink.shade400,
              onChanged: (value) => setState(() {
                user.sex = value!;
              }),
              title: Text("Uomo"),
            ),
            RadioListTile<Sex>(
              value: Sex.F,
              groupValue: user.sex,
              activeColor: Colors.pink.shade400,
              onChanged: (value) => setState(() {
                user.sex = value!;
              }),
              title: Text("Donna"),
            ),
          ],
        ),
      );

  Widget ralForm() => FormComponent(
        title: "Ral annuo (${(user.ral! / 1000).round()}k)",
        child: Slider(
          min: 0,
          max: 100000,
          divisions: 1000,
          thumbColor: Colors.pink.shade400,
          activeColor: Colors.pink.shade400,
          inactiveColor: Colors.pink.shade100,
          label: "${(user.ral! / 1000).round()}k",
          value: user.ral!,
          onChanged: (value) => setState(() {
            user.ral = value;
            print("Value :${user.ral!}");
          }),
        ),
      );

  Widget temsAndConditionsForm() => FormComponent(
        title: "Termini e condizioni",
        child: SwitchListTile(
          activeColor: Colors.pink.shade400,
          value: conditionsAccepted,
          onChanged: (value) => setState(() {
            conditionsAccepted = value;
          }),
        ),
      );

  Widget registrationButton() => Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
              backgroundColor: MaterialStateProperty.all(Colors.pink.shade400),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)))),
          onPressed: () => {
            user.name = nameController.text,
            user.surname = surnameController.text,
            user.email = emailController.text,
            user.phone = phoneController.text,
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(user: user),
              ),
            ),
          },
          child: Text("Crea account".toUpperCase()),
        ),
      );

  Widget divider() => Container(
        height: 10,
      );
}

// User saveUserData() {
//   final User user = User(name: name, surname: surname, email: email, phone: phone, sex: sex, ral: ral)
//   return null;
// }
