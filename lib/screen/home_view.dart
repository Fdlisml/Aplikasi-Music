import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          shape: Border(
              bottom: BorderSide(
                  color: Color.fromARGB(255, 153, 158, 161), width: 1)),
          leading: Image.asset(
            "images/logo.png",
            cacheWidth: 30,
            cacheHeight: 45,
          ),
          backgroundColor: Color.fromARGB(255, 64, 7, 121),
          elevation: 0,
          title: Row(
            children: [
              Text(
                "my",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontFamily: "PTSerifCaption",
                    fontSize: 20,
                    color: Colors.white),
              ),
              Text(
                "Tune",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ],
          ),
          titleSpacing: -5,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () {},
                child:  Icon(
                  Icons.download,
                  color: Colors.white,
                ),
              )
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () {},
                child:  Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              )
            ),
            // Material(
            //   child: Image.asset("images/twitter-icon.png"),
            // ),
            Container(
              child: Image.asset(
                "images/pp.png",
                width: 25,
                // height: 50,
              ),
            ),
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(left: 30, right: 30),
          color: Color.fromARGB(255, 64, 7, 121),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[]),
        ),
      ),
    );
  }
}
