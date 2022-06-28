import 'package:flutter/material.dart';
import 'package:music_app/widgets/custom_checkbox.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}


class _RegisterPageState extends State<RegisterPage> {
  TextEditingController Email = TextEditingController();

  bool isRememberMe = false;

  bool _isObsecure = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 64, 7, 121),
            title: Text(
              "Create an account",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 23,
                  color: Colors.white),
            ),
            elevation: 0,
            flexibleSpace: Container(
              child: Text(
                "Connect with yout friends today!",
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
                      child: Text(
                        "Username",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 35,
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        hintText: "Enter Your Username",
                        hintStyle: TextStyle(fontSize: 13),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none)),
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        hintText: "Enter Your Email",
                        hintStyle: TextStyle(fontSize: 13),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none)),
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    textAlign: TextAlign.left,
                    obscureText: !_isObsecure,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        suffixIcon: IconButton(
                          color: Colors.black,
                          splashRadius: 1,
                          onPressed: _togglePassword,
                          icon: Icon(
                            _isObsecure
                                ? Icons.visibility
                                : Icons.visibility_off,
                            size: 18,
                          ),
                        ),
                        hintText: "Please Enter Your Password",
                        hintStyle: TextStyle(fontSize: 13),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        CustomCheckbox(
                            // checkColor: Colors.black,
                            // activeColor: Colors.white,
                            // value: isRememberMe,
                            // onChanged: _toggleRememberMe,
                          ),
                        SizedBox(width: 8),
                        Text(
                          'Remember Me',
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ],
                    ),
                    Text(
                      'Forgot password',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 200,
                  height: 35,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 0),
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 206, 49),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 0,
                        color: Colors.black,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 85),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 13, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 22),
                        child: RotatedBox(
                          quarterTurns: 2,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            iconSize: 20,
                            onPressed: null,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.black,
                      height: 1,
                      width: 98,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text(
                        "Or With",
                        style: TextStyle(color: Color.fromARGB(255, 153, 158, 161), fontSize: 13),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      color: Colors.black,
                      height: 1,
                      width: 98,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Image.asset(
                        "images/twitter-icon.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        "images/google-icon.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        "images/facebook-icon.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        "images/apple-icon.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 110,
                  ),
                Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Already have an account ?  ',
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 13, color: Color.fromARGB(255, 255, 206, 49)),
                    ),
                  )
                ],
              )
              ],
            ),
          )),
    );
  }

  void _togglePassword() {
    _isObsecure = !_isObsecure;
    setState(() {});
  }

  void _toggleRememberMe(bool? value) {
    isRememberMe = !isRememberMe;
    setState(() {});
  }
}
