import 'package:flutter/material.dart';
import 'package:lezione5/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool termsAndConditionsChecked = false;

  void onLoginPressed() {
    setState(() {
      final email = emailController.text.trim();
      final password = passwordController.text.trim();
      if (email.isNotEmpty && password == "1234" && termsAndConditionsChecked) {
        emailController.clear();
        passwordController.clear();
        termsAndConditionsChecked = false;

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(
              email: email,
            ),
          ),
        );
      }
    });
  }

  void onShowPassordPressed(bool state) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                // border: Border.all(
                //   color: Colors.grey.shade700,
                //   width: 1,
                // ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: emailController,
                style: TextStyle(),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.email),
                ),
                textInputAction: TextInputAction.next,
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                // border: Border.all(
                //   color: Colors.grey.shade700,
                //   width: 1,
                // ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: passwordController,
                style: TextStyle(),
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: GestureDetector(
                    child: Icon(Icons.visibility),
                  ),
                ),
                textInputAction: TextInputAction.done,
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: termsAndConditionsChecked,
                  onChanged: (value) => {
                    setState(
                      () => {termsAndConditionsChecked = value!},
                    ),
                  },
                ),
                Text("Accetta i temini e le condizioni"),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.pink.shade300,
                // border: Border.all(
                //   color: Colors.grey.shade700,
                //   width: 1,
                // ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                child: Text(
                  "ACCEDI",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => onLoginPressed(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
