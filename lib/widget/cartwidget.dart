import 'package:flutter/material.dart';

import '../intl/app_color.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({super.key});

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 78,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Container(
                  width: 84,
                  height: 76,
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
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: Image.asset("assets/images/Rectangle 212.png"),
                      )),
                    ],
                  )),
              SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Bubble Tea",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColor.lemonteatext)),
                    Spacer(),
                    Text("\$",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.dollor)),
                    Text(
                      "56.99",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColor.lemonteatext),
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
                        onTap: () {
                          setState(() {
                            count--;
                          });
                        },
                        child: Container(
                            width: 15,
                            height: 15,
                            child: Center(
                                child: Text(
                              "-",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            )))),
                    SizedBox(
                      width: 21,
                    ),
                    Text(
                      "$count",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 21,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          count++;
                        });
                      },
                      child: Container(
                          width: 15,
                          height: 15,
                          child: Center(
                              child: Text(
                            "+",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ))),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
