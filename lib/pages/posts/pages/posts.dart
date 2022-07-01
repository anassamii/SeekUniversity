import 'dart:io';
import 'package:flutter/material.dart';
import 'package:ocr_app/bloc/theme.bloc.dart';
import 'package:ocr_app/widgets/drawer.widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ocr_app/pages/posts/view/components/itemPage.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: () async{
        return await showDialog(context:context, builder: (context){
          return AlertDialog(
            title: const Text('Do you want to exit?'),
            actions: [
              ElevatedButton(onPressed: (){
                exit(0);
              }, child: const Text('Exit')),
              ElevatedButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: const Text('Cancel'))
            ],
          );
        });
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          actions: [
            IconButton(onPressed: (){
              context.read<ThemeBloc>().add(SwitchThemeEvent());
            }, icon: const Icon(Icons.switch_account))
          ],
        ),
        drawer: const MyDrawer(),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: height * 0.3,
                        width: width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/universities.jpg"),
                                fit: BoxFit.cover)),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.black.withOpacity(1.0),
                                Colors.black.withOpacity(0.5),
                              ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
                        ),
                      ),
                      Positioned(
                        bottom: 130,
                        left: 20,
                        child: RichText(
                          text: TextSpan(
                              text: "Explore\n",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 20),
                              children: [
                                TextSpan(
                                    text: "Universities' posts",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 24))
                              ]),
                        ),
                      ),
                    ],
                  ),
                  Transform.translate(
                    offset: Offset(0.0, -(height * 0.3 - height * 0.26)),
                    child: Container(
                      width: width,
                      padding: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: DefaultTabController(
                          length: 1,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, bottom: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding:
                                      EdgeInsets.symmetric(vertical: 1),
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15, right: 15),
                                        child: Icon(
                                          Icons.search,
                                          size: 30,
                                        ),
                                      ),
                                      hintText: "Search...",
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                              width: 1.0, color: Colors.grey[400]!))),
                                ),
                              ),
                              Container(
                                height: height * 0.6,
                                child: TabBarView(
                                  children: <Widget>[
                                    ItemPage(),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                  )
                ],
              ),
            ),
          )
        ),
      );
  }
}
