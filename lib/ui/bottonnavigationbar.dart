import 'package:exam_app_second/ui/cart.dart';
import 'package:exam_app_second/ui/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../intl/app_color.dart';

class Bottomnavigatiobar extends StatefulWidget {
  const Bottomnavigatiobar({super.key});

  @override
  State<Bottomnavigatiobar> createState() => _BottomnavigatiobarState();
}

class _BottomnavigatiobarState extends State<Bottomnavigatiobar> {
  bool home = true;

  bool cart = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          if (home == true) HomePage(),
          if (cart == true) CartScreen(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 22.0, right: 22),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 56,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 20,
                color: AppColor.lightgray,
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: SvgPicture.asset(
                    "assets/images/Group 581.svg",
                    color: Colors.grey,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      home = true;

                      cart = false;
                    });
                  },
                  child: Container(
                      child: SvgPicture.asset(
                    "assets/images/Group 570.svg",
                    color: home ? AppColor.bottomnavigationitem : Colors.grey,
                  )),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      home = false;

                      cart = true;
                    });
                  },
                  child: Container(
                    child: SvgPicture.asset(
                      "assets/images/Group 574.svg",
                      color: cart ? AppColor.bottomnavigationitem : Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
