import 'dart:async';

import 'package:exam_app_second/ui/bottonnavigationbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../intl/app_color.dart';
import 'login_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      autologin();
    });
  }

  String? isLoggedIn;
  void autologin() async {
    final prefs = await SharedPreferences.getInstance();
    isLoggedIn = prefs.getString("login");
    print(isLoggedIn);
    if (isLoggedIn != null) {
      if (isLoggedIn == "islogin") {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return Bottomnavigatiobar();
        }));
        print("is true");
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return LoginPage();
        }));
        print("is false");
      }
    } else {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return LoginPage();
      }));
      print("is null");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/images/Pattern (5).png",
              fit: BoxFit.cover,
            )),
        Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/Logo.png",
                  width: 175,
                  height: 139,
                ),
                Text(
                  "FoodNinja",
                  style: TextStyle(
                      fontSize: 40,
                      color: AppColor.gradient,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5),
                ),
                Text("Deliever Favorite Food",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1)),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
