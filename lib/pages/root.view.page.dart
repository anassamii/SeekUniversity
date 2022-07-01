import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ocr_app/bloc/theme.bloc.dart';
import 'package:ocr_app/pages/qr.code.page.dart';
import 'package:ocr_app/pages/qr.scan.page.dart';
import 'package:ocr_app/pages/posts/pages/posts.dart';
import 'package:ocr_app/pages/login/intro_screen.dart';
import 'package:ocr_app/pages/login/auth_screen.dart';
import 'package:ocr_app/pages/search.dart';

class RootView extends StatelessWidget {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc,ThemeState>(
        builder: (context,state){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: state.theme,
            initialRoute: 'intro',
            routes: {
              "intro": (context) => IntroScreen(),
              "login": (context) => const AuthScreen(authType: AuthType.login),
              "register": (context) => const AuthScreen(authType: AuthType.register),
              "home":(context)=> Posts(),
              "/search": (context) => const MyApp(),
              "/QR":(context)=>const QRCodePage(),
              "/scanQR": (context)=> const QRViewScannerPage()
            },
          );
        }
    );
  }
}
