import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  TextEditingController Email = TextEditingController();

  bool isRememberMe = false;

  bool _isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 64, 7, 121),
            title: Text(
              "Hi, Welcome Back! 👋",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 23,
                  color: Colors.white),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      // margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
                      child: Text(
                        "Email",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 35,
                  margin: EdgeInsets.only(top: 5),
                  child: TextField(
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter Your Email",
                        hintStyle: TextStyle(fontSize: 13),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onChanged: (value) {
                      setState;
                    },
                    controller: Email,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Password",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 35,
                  margin: EdgeInsets.only(top: 5),
                  child: TextField(
                    textAlign: TextAlign.left,
                    obscureText: _isObsecure,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        suffixIcon: InkWell(
                          onTap: _togglePassword,
                          child: Icon(_isObsecure
                              ? Icons.visibility
                              : Icons.visibility_off,
                              size: 18,
                              ),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Please Enter Your Password",
                        hintStyle: TextStyle(fontSize: 13),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Wrap(
                //       crossAxisAlignment: WrapCrossAlignment.center,
                //       children: [
                //         SizedBox(
                //           width: 20,
                //           height: 20,
                //           child: Checkbox(
                //             value: isRememberMe,
                //             onChanged: (value) {
                //               setState(() => isRememberMe = !isRememberMe);
                //             },
                //             // onChanged: (value) => setState(() => isRememberMe = !isRememberMe),
                //           ),
                //         ),
                //         SizedBox(width: 8),
                //         Text(
                //           'Remember me',
                //           style: TextStyle(fontSize: 13, color: Colors.white),
                //         ),
                //       ],
                //     ),
                //     Text(
                //       'Forgot password',
                //       style: TextStyle(
                //         color: Colors.red,
                //         fontSize: 13,
                //         fontWeight: FontWeight.w500,
                //       ),
                //     ),
                //   ],
                // ),
                Container(
                  width: 200,
                  height: 35,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 206, 49),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      )),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                )
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     Container(
                //       padding: EdgeInsets.only(top: 352, right: 5),
                //       child: Text(
                //         "Dont't have an account ?",
                //         style: TextStyle(fontSize: 13, color: Colors.white),
                //       ),
                //     ),
                //     Container(
                //       padding: EdgeInsets.only(top: 352),
                //       child: Text(
                //         "Sign Up",
                //         style: TextStyle(fontSize: 13, color: Colors.yellow),
                //       ),
                //     )
                //   ],
                // )
              ],
            ),
          )),
    );
  }

  void _togglePassword() {
      _isObsecure = !_isObsecure;
    setState(() {});
  }

  void setState(Null Function() param0) {}
}
