import 'package:flutter/material.dart';
import 'package:ocr_app/widgets/auth_form.dart';

enum AuthType { login, register }

class AuthScreen extends StatelessWidget {
  final AuthType authType;

  const AuthScreen({Key? key, required this.authType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 65),
                      Text(
                        'Fill the form below',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2),
                      ),
                      Hero(
                        tag: 'logoAnimation',
                        child: Image.asset(
                          'images/logo.png',
                          height: 250,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            AuthForm(authType: authType),
          ],
        ),
      ),
    );
  }
}
