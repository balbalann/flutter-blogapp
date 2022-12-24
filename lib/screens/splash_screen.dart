import 'dart:async';

import 'package:blogapp/screens/home_screen.dart';
import 'package:blogapp/screens/option_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    final user = auth.currentUser;
    Timer(Duration(seconds: 5),
       ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => OptionScreen())));
    
    // if(user != null){
    //   Timer(Duration(seconds: 5),
    //    ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => OptionScreen())));
    // }else{
    //   Timer(Duration(seconds: 5), 
    //   ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())));
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              // height: MediaQuery.of(context).size.height * 1,
              // width: MediaQuery.of(context).size.width * 2,
              image: AssetImage('images/blog.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Blog!',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                        fontWeight: FontWeight.w300),
                  )),
            )
          ]),
    );
  }
}
