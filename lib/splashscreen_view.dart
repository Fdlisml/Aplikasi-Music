import 'package:flutter/material.dart';
import 'dart:async';
import 'package:music_app/login_view.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 10);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return HomePage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 64, 7, 121),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,       
        children: [          
          Center(           
            child: Image.asset(
              "images/logo.png",
              height: 115.0,             
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text("my",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    // fontFamily: "PTSerifCaption-Italic",
                    fontSize: 25,
                    color: Colors.white
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text("Tune",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    // fontFamily: "PT Sans",
                    fontSize: 25,
                    color: Colors.white
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
