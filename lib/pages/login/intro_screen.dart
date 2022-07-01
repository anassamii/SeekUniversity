import 'package:flutter/material.dart';
import 'package:ocr_app/widgets/original_button.dart';
import 'package:lottie/lottie.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        title: const Text(
          'Welcome to Seek University',
        ),
      ),
      backgroundColor: Colors.lightBlue,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(),
            Hero(
              tag: 'logoAnimation',
                child: Lottie.network(
                    'https://assets10.lottiefiles.com/private_files/lf30_c3gZyd.json', fit: BoxFit.cover
                ),
              /*child: Image.asset(
                'images/logo.png',
                fit: BoxFit.cover,
              ),*/
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: OriginalButton(
                text: 'Get Started',
                color: Colors.white,
                textColor: Colors.lightBlue,
                onPressed: () {
                  Navigator.of(context).pushNamed('login');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
