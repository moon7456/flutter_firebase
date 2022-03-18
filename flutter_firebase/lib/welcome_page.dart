import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/auth_controller.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({Key? key, required this.email}) : super(key: key);
  String email;

  @override
  Widget build(BuildContext context) {
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
          SizedBox(
            height: 70,
          ),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  email,
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                Text("A@a.com",
                    style: TextStyle(fontSize: 36, color: Colors.grey[500])),
              ],
            ),
          ),
          SizedBox(
            height: 200,
          ),
          GestureDetector(
            onTap: () {
              AuthController.instance.logOut();
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
        ],
      ),
    );
  }
}
