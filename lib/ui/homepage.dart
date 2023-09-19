import 'package:exam_app_second/model/tea_model.dart';
import 'package:exam_app_second/ui/lemonpage.dart';
import 'package:exam_app_second/widget/tea_widget.dart';
import 'package:exam_app_second/widget/teawidget2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../intl/app_color.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

var log = "islogout";

class _HomePageState extends State<HomePage> {
  Future<bool> isLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('login', log);
  }

  void _showLogoutConfirmation() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        "Are you sure you want to logout ? ",
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColor.drawer,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.13),
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: SizedBox(
                            width: 115,
                            child: ElevatedButton(
                              onPressed: () {
                                // Close the pop-up dia
                                // log
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                    color: AppColor.drawer,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.13),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColor.darkgreen,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 115,
                          child: ElevatedButton(
                            onPressed: () {
                              isLoggedIn();
                              Navigator.popUntil(
                                  context, (route) => route.isFirst);
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return LoginPage();
                              }));
                            },
                            child: Text(
                              "Logout",
                              style: TextStyle(color: AppColor.drawer),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.darkgreen,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  List<TeaModel> tealist = [
    TeaModel(
        id: "1",
        IMG: "assets/images/image 2.png",
        name: "Lemon Tea",
        dollor: "",
        title: ""),
    TeaModel(
        id: "2",
        IMG: "assets/images/image 3.png",
        name: "Black Tea",
        dollor: "",
        title: ""),
    TeaModel(
        id: "3",
        IMG: "assets/images/image 3.png",
        name: "Green Tea",
        dollor: "",
        title: ""),
    TeaModel(
        id: "4",
        IMG: "assets/images/image 3.png",
        name: "Herbal Tea",
        title: "",
        dollor: ""),
  ];

  List<TeaModel> tealist1 = [
    TeaModel(
        id: "1",
        IMG: "assets/images/Rectangle 212.png",
        name: "Bubble Tea",
        dollor: "56.99",
        title: "Good day time"),
    TeaModel(
        id: "2",
        IMG: "assets/images/Rectangle 214.png",
        name: "Purple Tea",
        dollor: "58.99",
        title: "Good day time"),
    TeaModel(
        id: "3",
        IMG: "assets/images/Rectangle 212.png",
        name: "white Tea",
        dollor: "50.99",
        title: "Good day time"),
    TeaModel(
        id: "4",
        IMG: "assets/images/Rectangle 212.png",
        name: "Herbal Tea",
        dollor: "25.99",
        title: "Good day time"),
  ];
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
        
         //extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: AppColor.deawer),
          title: Text(
            "Hi, John!",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColor.appbartittle),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 31,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      contentPadding:
                          EdgeInsets.only(top: 12, bottom: 12, left: 18),
                      filled: true,
                      fillColor: AppColor.searchbar,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none)),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Row(
                  children: [
                    Text(
                      "Recommendation",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColor.recommended),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Text(
                      "Black Tea",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColor.appbartittle),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Text(
                      "Green Tea",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColor.appbartittle),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  height: 158,
                  child: ListView.separated(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      primary: false,
                      shrinkWrap: true,
                      //physics: ,
                      itemBuilder: (context, index) {
                        return InkWell(
                            highlightColor: Colors.transparent,
                            splashFactory: NoSplash.splashFactory,
                            onTap: () {
                              if (index == 0) {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return LemonPage();
                                }));
                              }
                            },
                            child: TeaWidget(tea: tealist[index]));
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 11,
                        );
                      },
                      itemCount: tealist.length),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Row(
                  children: [
                    Text(
                      "Will Buy",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColor.willbuy),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: ListView.separated(
                    primary: false,
                    shrinkWrap: true,
                    //physics: ,
                    itemBuilder: (context, index) {
                      return TeaWidget2(tea1: tealist1[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 24,
                      );
                    },
                    itemCount: tealist1.length),
              ),
              SizedBox(
                height: 18,
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    SvgPicture.asset("assets/images/Ellipse 158drawer.svg"),
                    SvgPicture.asset("assets/images/Ellipse 156drawer.svg"),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 20, bottom: 8),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 60,
                                backgroundImage: AssetImage(
                                    "assets/images/Ellipse 157drawerpng.png"),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 120,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Spacer(),
                                    Text(
                                      "John Tim",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: AppColor.drawer),
                                    ),
                                    Text("Edit Profile",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: AppColor.drawer)),
                                    SizedBox(
                                      height: 4,
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 89.0),
                          child: Divider(
                            thickness: 2,
                            color: AppColor.drawercolor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 45),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Categories ",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.drawercolor),
                              ),
                              Text(
                                "Your Orders",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.drawercolor),
                              ),
                              Text(
                                "Wishlist",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.drawercolor),
                              ),
                              Text(
                                "FAQs",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.drawercolor),
                              ),
                              InkWell(
                                onTap: () {
                                  _showLogoutConfirmation();
                                },
                                child: Text(
                                  "Log Out",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: AppColor.drawercolor),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
