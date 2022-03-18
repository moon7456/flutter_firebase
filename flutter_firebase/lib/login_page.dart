import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/signup_page.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            height: h * 03,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("img/loginimg.png"))),
          ),
          Container(
            child: Column(
              children: [
                Text("Hello",
                    style:
                        TextStyle(fontSize: 70, fontWeight: FontWeight.bold)),
                Text("Sign in to your account",
                    style: TextStyle(fontSize: 20, color: Colors.grey[500])),
                SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.5))
                      ]),
                  child: TextField(
                      decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.redAccent, width: 1.0)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.redAccent, width: 1.0)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                  )),
                ),
                SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.5))
                      ]),
                  child: TextField(
                      decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.redAccent, width: 1.0)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.redAccent, width: 1.0)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                  )),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(),
                    )
                  ],
                ),
                Text("Forgot your password?",
                    style: TextStyle(fontSize: 20, color: Colors.grey[500])),
                SizedBox(
                  height: 70,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  width: w * 0.4,
                  height: h * 0.08,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage("img/loginbtn.png"),
                        fit: BoxFit.cover,
                      )),
                  child: Center(
                    child: Text("Sign in",
                        style: TextStyle(
                            fontSize: 37,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(height: w * 0.1),
                RichText(
                    text: TextSpan(
                        text: "Don't have an account",
                        style: TextStyle(color: Colors.grey[500], fontSize: 20),
                        children: [
                      TextSpan(
                          text: "Create",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.to(() => SignUpPage()))
                    ]))
              ],
            ),
          )
        ],
      ),
    );
  }
}
