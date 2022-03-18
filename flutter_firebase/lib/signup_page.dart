import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/auth_controller.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    List images = ["g.png", "t.png", "f.png"];
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          width: w,
          height: h * 03,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("img/signup.png"))),
          child: Column(
            children: [
              SizedBox(
                height: h * 0.16,
              ),
              CircleAvatar(
                backgroundColor: Colors.white70,
                radius: 56,
                backgroundImage: AssetImage("img/profile.png"),
              )
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
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
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Your email here",
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.deepOrangeAccent,
                      ),
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
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "password",
                      prefixIcon: Icon(Icons.password_outlined,
                          color: Colors.deepOrangeAccent),
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
              GestureDetector(
                onTap: () {
                  AuthController.instance.register(
                      emailController.text.trim(), passwordController);
                },
                child: Container(
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
                    child: Text("Sign up",
                        style: TextStyle(
                            fontSize: 37,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                  text: TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.back(),
                      text: "have an account?",
                      style: TextStyle(fontSize: 20, color: Colors.grey[500]))),
              SizedBox(height: w * 0.1),
              RichText(
                  text: TextSpan(
                text: "Sign up using one of the following methods",
                style: TextStyle(color: Colors.grey[500], fontSize: 16),
              )),
              Wrap(
                children: List<Widget>.generate(3, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[500],
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("img/" + images[index]),
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
        )
      ],
    ));
  }
}
