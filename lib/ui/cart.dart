import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../intl/app_color.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int count = 1;
  int count1 = 1;
  int count2 = 1;

  void _incrementCounter1() {
    setState(() {
      if (count1 < 10) {
        count1++;
      }
    });
  }

  void _decrementCounter1() {
    setState(() {
      if (count1 > 1) {
        count1--;
      }
    });
  }

  void _incrementCounter() {
    setState(() {
      if (count < 10) {
        count++;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if (count > 1) {
        count--;
      }
    });
  }

  void _incrementCounter2() {
    setState(() {
      if (count2 < 10) {
        count2++;
      }
    });
  }

  void _decrementCounter2() {
    setState(() {
      if (count2 > 1) {
        count2--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.menu_sharp),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Row(
                  children: [
                    Spacer(),
                    SvgPicture.asset("assets/images/Ellipse 154 (1).svg"),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 107,
                          ),
                          Text(
                            "Shopping Cart",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: AppColor.drawer),
                          ),
                          Text(
                            "3 items in cart",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColor.widget),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            //height: 78,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Container(
                                    width: 84,
                                    //height: 76,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: AppColor.teawidget,
                                    ),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          "assets/images/Rectangle 211.png",
                                          fit: BoxFit.cover,
                                        ),
                                        Center(
                                            child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, bottom: 8),
                                          child: Image.asset(
                                              "assets/images/Rectangle 212.png"),
                                        )),
                                      ],
                                    )),
                                SizedBox(
                                  width: 5,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Bubble Tea",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: AppColor.lemonteatext)),
                                       //Spacer(),

                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 20.0),
                                            child: Text("\$",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColor.dollor)),
                                          ),
                                          Text(
                                            "56.99",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                color: AppColor.lemonteatext),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 12.0),
                                  child: Row(
                                    children: [
                                      InkWell(
                                          highlightColor: Colors.transparent,
                                          splashFactory: NoSplash.splashFactory,
                                          onTap: () {
                                            _decrementCounter();
                                          },
                                          child: Container(
                                              width: 14,
                                              height: 14,
                                              child: Center(
                                                  child: SvgPicture.asset(
                                                      "assets/images/Your article for the (1).svg")))),
                                      SizedBox(
                                        width: 21,
                                      ),
                                      Text(
                                        "$count",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        width: 21,
                                      ),
                                      InkWell(
                                        highlightColor: Colors.transparent,
                                        splashFactory: NoSplash.splashFactory,
                                        onTap: () {
                                          _incrementCounter();
                                        },
                                        child: Container(
                                            width: 14,
                                            height: 14,
                                            child: Center(
                                                child: SvgPicture.asset(
                                                    "assets/images/Your article for the.svg"))),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            //height: 78,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Container(
                                    width: 84,
                                    // height: 76,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: AppColor.teawidget,
                                    ),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          "assets/images/Rectangle 211.png",
                                          fit: BoxFit.cover,
                                        ),
                                        Center(
                                            child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, bottom: 8),
                                          child: Image.asset(
                                              "assets/images/Rectangle 214.png"),
                                        )),
                                      ],
                                    )),
                                SizedBox(
                                  width: 5,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Bubble Tea",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: AppColor.lemonteatext)),
                                      // Spacer(),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 20.0),
                                            child: Text("\$",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColor.dollor)),
                                          ),
                                          Text(
                                            "56.99",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                color: AppColor.lemonteatext),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 12.0),
                                  child: Row(
                                    children: [
                                      InkWell(
                                          highlightColor: Colors.transparent,
                                          splashFactory: NoSplash.splashFactory,
                                          onTap: () {
                                            _decrementCounter1();
                                          },
                                          child: Container(
                                              width: 14,
                                              height: 14,
                                              child: Center(
                                                  child: SvgPicture.asset(
                                                      "assets/images/Your article for the (1).svg")))),
                                      SizedBox(
                                        width: 21,
                                      ),
                                      Text(
                                        "$count1",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        width: 21,
                                      ),
                                      InkWell(
                                        highlightColor: Colors.transparent,
                                        splashFactory: NoSplash.splashFactory,
                                        onTap: () {
                                          _incrementCounter1();
                                        },
                                        child: Container(
                                            width: 14,
                                            height: 14,
                                            child: Center(
                                                child: SvgPicture.asset(
                                                    "assets/images/Your article for the.svg"))),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            // height: 78,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Container(
                                    width: 84,
                                    // height: 76,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: AppColor.teawidget,
                                    ),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          "assets/images/Rectangle 211.png",
                                          fit: BoxFit.cover,
                                        ),
                                        Center(
                                            child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, bottom: 8),
                                          child: Image.asset(
                                              "assets/images/Rectangle 214.png"),
                                        )),
                                      ],
                                    )),
                                SizedBox(
                                  width: 5,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Bubble Tea",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: AppColor.lemonteatext)),
                                      // Spacer(),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 20.0),
                                            child: Text("\$",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColor.dollor)),
                                          ),
                                          Text(
                                            "56.99",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                color: AppColor.lemonteatext),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 12.0),
                                  child: Row(
                                    children: [
                                      InkWell(
                                          highlightColor: Colors.transparent,
                                          splashFactory: NoSplash.splashFactory,
                                          onTap: () {
                                            _decrementCounter2();
                                          },
                                          child: Container(
                                              width: 14,
                                              height: 14,
                                              child: Center(
                                                  child: SvgPicture.asset(
                                                      "assets/images/Your article for the (1).svg")))),
                                      SizedBox(
                                        width: 21,
                                      ),
                                      Text(
                                        "$count2",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        width: 21,
                                      ),
                                      InkWell(
                                        highlightColor: Colors.transparent,
                                        splashFactory: NoSplash.splashFactory,
                                        onTap: () {
                                          _incrementCounter2();
                                        },
                                        child: Container(
                                            width: 14,
                                            height: 14,
                                            child: Center(
                                                child: SvgPicture.asset(
                                                    "assets/images/Your article for the.svg"))),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 160,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColor.darkgreen,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 23,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Text(
                          "\$",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      Text(
                        "95.97",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      Spacer(),
                      Text(
                        "Next",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      SvgPicture.asset("assets/images/Vector1.svg"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
