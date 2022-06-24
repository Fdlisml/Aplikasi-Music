import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 64, 7, 121),
            title: Text(
              "Hi, Welcome Back! 👋",
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
            elevation: 0,
            flexibleSpace: Container(
              child: Text(
                "Hello again, you’ve been missed!",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                    color: Color.fromARGB(255, 153, 158, 161)),
                textAlign: TextAlign.left,
              ),
              padding: EdgeInsets.only(top: 65, left: 20),
            ),
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(left: 30, right: 30),
            color: Color.fromARGB(255, 64, 7, 121),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  
                  height: 40,
                  margin: EdgeInsets.only(top: 30),
                  child: TextField(
                  decoration: InputDecoration(                    
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter Your Email",
                      hintStyle: TextStyle(fontSize: 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onChanged: (value) {
                    setState(() {});
                  },
                  controller: controller,
                ),
                ),
                Container(
                  padding: EdgeInsets.all(32.0),
                  margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
                  child: Text(
                    "Password",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      counterText: "Forget Password",
                      counterStyle: TextStyle(color: Colors.red),
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: Colors.black,
                      ),
                      contentPadding: EdgeInsets.only(top: 5, left: 10),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Please Enter Your Password",
                      hintStyle: TextStyle(fontSize: 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onChanged: (value) {
                    setState(() {});
                  },
                  controller: controller,
                ),
                Text(controller.text)
              ],
            ),
          )),
    );
  }

  void setState(Null Function() param0) {}
}
