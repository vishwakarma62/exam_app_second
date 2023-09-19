import 'package:exam_app_second/ui/bottonnavigationbar.dart';
import 'package:exam_app_second/ui/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../intl/app_color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController lemailCTR = TextEditingController();
  TextEditingController lpasswordCTR = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  String? storedemail;
  String? storedpassword;
  String? enteremail;
  String? enterpassword;

  void getdata() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      storedemail = prefs.getString("email");

      storedpassword = prefs.getString("password");
    });
    print(storedemail);
    print(storedpassword);
  }

  // void inputvalidation() async {
  //   if (_formKey.currentState!.validate()) {
  //     enteremail = lemailCTR.text;
  //     enterpassword = lpasswordCTR.text;
  //     if (enteremail == storedemail&&entere) {
  //       if (enterpassword == storedpassword) {
  //         Navigator.pushReplacement(context,
  //             MaterialPageRoute(builder: (context) {
  //           return LoginPage();
  //         }));
  //       } else {
  // Fluttertoast.showToast(
  //     msg: "invalid credentials",
  //     toastLength: Toast.LENGTH_SHORT,
  //     gravity: ToastGravity.BOTTOM,
  //     timeInSecForIosWeb: 1,
  //     backgroundColor: Colors.red,
  //     textColor: Colors.white,
  //     fontSize: 16.0);
  // print("invalid credential");
  //       }
  //     } else {
  //       Fluttertoast.showToast(
  //           msg: "invalid credentials",
  //           toastLength: Toast.LENGTH_SHORT,
  //           gravity: ToastGravity.BOTTOM,
  //           timeInSecForIosWeb: 1,
  //           backgroundColor: Colors.red,
  //           textColor: Colors.white,
  //           fontSize: 16.0);
  //       print("invalid credential");
  //     }
  //   }
  // }

  var log = "islogin";
  Future<bool> isLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('login', log);
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
                  //SvgPicture.asset("assets/images/Pattern2.svg"),
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
                      Text("Login To Your Account",
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
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: lemailCTR,
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
                          keyboardType: TextInputType.emailAddress,
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
                         
                          controller: lpasswordCTR,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(8),
                            FilteringTextInputFormatter.deny(
                                RegExp(r'\s')), // Deny whitespace (spaces)
                          ],
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "enter Password";
                            } else {
                              return null;
                            }
                          },
                          obscureText: _obscureText,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(
                                    top: 19.0, bottom: 18, left: 24, right: 16),
                                child: SvgPicture.asset(
                                  "assets/images/Lock.svg",
                                ),
                              ),
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
              Text(
                "Or Continue With",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColor.textfieldcolor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, left: 22, bottom: 16, right: 24),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/facebook-3 1.svg",
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Text("Facebook",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    letterSpacing: 0.5)),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColor.textfieldcolor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, left: 22, bottom: 16, right: 24),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/google-icon 1.svg",
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Text("Google",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    letterSpacing: 0.5)),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  lemailCTR.clear();
                  lpasswordCTR.clear();
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignUPPage();
                  }));
                },
                child: Text("Sign UP",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: AppColor.gradient,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColor.gradient,
                    )),
              ),
              SizedBox(
                height: 36,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    enteremail = lemailCTR.text;
                    enterpassword = lpasswordCTR.text;
                    lemailCTR.clear();
                    lpasswordCTR.clear();

                    if (enteremail == storedemail &&
                        enterpassword == storedpassword) {
                      isLoggedIn();
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return Bottomnavigatiobar();
                      }));
                    } else {
                      Fluttertoast.showToast(
                          msg: "invalid credentials",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                      print("invalid credential");
                    }
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 49.0, vertical: 18),
                  child: Text("Login",
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
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
