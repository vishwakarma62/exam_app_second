import 'package:exam_app_second/ui/bottonnavigationbar.dart';
import 'package:exam_app_second/ui/homepage.dart';
import 'package:exam_app_second/ui/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../intl/app_color.dart';

class SignUPPage extends StatefulWidget {
  const SignUPPage({super.key});

  @override
  State<SignUPPage> createState() => _SignUPPageState();
}

class _SignUPPageState extends State<SignUPPage> {
  bool ischecked = false;
  bool ischecked2 = false;
  bool _obscureText = true;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameCTR = TextEditingController();
  TextEditingController emailCTR = TextEditingController();
  TextEditingController passwordCTR = TextEditingController();

  toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "assets/images/Pattern (5).png",
                        fit: BoxFit.cover,
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 44,
                      ),
                      Row(
                        children: [
                          Spacer(),
                          Image.asset("assets/images/Logo.png"),
                          Spacer(),
                        ],
                      ),
                      Text(
                        "FoodNinja",
                        style: TextStyle(
                            fontSize: 40,
                            color: AppColor.gradient,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.4),
                      ),
                      Text("Deliever Favorite Food",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1)),
                      SizedBox(
                        height: 60,
                      ),
                      Text("Sign Up For Free ",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Form(
                  key: formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'[^0-9]')),
                            FilteringTextInputFormatter.deny(
                                RegExp(r'\s')), // Deny whitespace (spaces)
                          ],
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter name";
                            } else {
                              return null;
                            }
                          },
                          controller: nameCTR,
                          decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(
                                    top: 19.0, bottom: 18, left: 24, right: 16),
                                child: SvgPicture.asset(
                                  "assets/images/Profile.svg",
                                ),
                              ),
                              hintText: "Name",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white.withOpacity(0.3),
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                              contentPadding: EdgeInsets.only(
                                  left: 28, top: 22, bottom: 21),
                              filled: true,
                              fillColor: AppColor.textfieldcolor,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15),
                              )),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Colors.white),
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(
                                RegExp(r'\s')), // Deny whitespace (spaces)
                          ],
                          validator: (value) {
                            // Check if this field is empty
                            if (value == null || value.isEmpty) {
                              return 'Enter email';
                            }

                            // using regular expression
                            if (!RegExp(
                                    r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                                .hasMatch(value)) {
                              return "Please enter a valid email address";
                            }

                            // the email is valid
                            return null;
                          },
                          controller: emailCTR,
                          decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(
                                    top: 19.0, bottom: 18, left: 22, right: 12),
                                child: SvgPicture.asset(
                                  "assets/images/Message.svg",
                                ),
                              ),
                              hintText: "Email",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white.withOpacity(0.3),
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                              contentPadding: EdgeInsets.only(
                                  left: 28, top: 22, bottom: 21),
                              filled: true,
                              fillColor: AppColor.textfieldcolor,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15),
                              )),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(8),
                            FilteringTextInputFormatter.deny(
                                RegExp(r'\s')), // Deny whitespace (spaces)
                          ],
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter password";
                            } else {
                              return null;
                            }
                          },
                          controller: passwordCTR,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(
                                    top: 16.0, right: 24, bottom: 16),
                                child: SizedBox(
                                  height: 10,
                                  width: 10,
                                  child: InkWell(
                                      onTap: toggleObscureText,
                                      child: _obscureText
                                          ? Image.asset(
                                              "assets/images/view.png",
                                              fit: BoxFit.cover,
                                              color: AppColor.white
                                                  .withOpacity(0.3),
                                            )
                                          : Image.asset(
                                              "assets/images/hidden.png",
                                              fit: BoxFit.cover,
                                              color: AppColor.white
                                                  .withOpacity(0.3),
                                            )),
                                ),
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(
                                    top: 19.0, bottom: 18, left: 24, right: 16),
                                child: SvgPicture.asset(
                                  "assets/images/Lock.svg",
                                ),
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white.withOpacity(0.3),
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                              contentPadding: EdgeInsets.only(
                                  left: 28, top: 22, bottom: 21),
                              filled: true,
                              fillColor: AppColor.textfieldcolor,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15),
                              )),
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    InkWell(
                      highlightColor: Colors.transparent,
                      splashFactory: NoSplash.splashFactory,
                      onTap: () {
                        setState(() {
                          ischecked = !ischecked;
                        });
                      },
                      child: Container(
                        width: 22,
                        height: 22,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ischecked
                                ? AppColor.gradient
                                : AppColor.textfieldcolor),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ischecked
                              ? SvgPicture.asset(
                                  "assets/images/check.svg",
                                )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Keep Me Signed In",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white.withOpacity(0.5)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    InkWell(
                      highlightColor: Colors.transparent,
                      splashFactory: NoSplash.splashFactory,
                      onTap: () {
                        setState(() {
                          ischecked2 = !ischecked2;
                        });
                      },
                      child: Container(
                        width: 22,
                        height: 22,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ischecked2
                                ? AppColor.gradient
                                : AppColor.textfieldcolor),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ischecked2
                              ? SvgPicture.asset(
                                  "assets/images/check.svg",
                                )
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Email Me About Special Pricing",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white.withOpacity(0.5)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 44,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    final prefs = await SharedPreferences.getInstance();
                    prefs.setString("login", nameCTR.text);
                    prefs.setString("email", emailCTR.text);
                    prefs.setString("password", passwordCTR.text);
                    emailCTR.clear();
                    nameCTR.clear();
                    passwordCTR.clear();
                    Navigator.popUntil(context, (route) => route.isFirst);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    }));
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 26.5, vertical: 18),
                  child: Text("Create Account",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      )),
                ),
                style: ElevatedButton.styleFrom(
                    primary: AppColor.gradient,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Back to the Login Page",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColor.gradient,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColor.gradient,
                  ),
                ),
              ),
              SizedBox(
                height: 21,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
