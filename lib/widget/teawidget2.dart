import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../intl/app_color.dart';
import '../model/tea_model.dart';

class TeaWidget2 extends StatefulWidget {
  TeaWidget2({super.key, required this.tea1});
  TeaModel tea1;

  @override
  State<TeaWidget2> createState() => _TeaWidget2State();
}

class _TeaWidget2State extends State<TeaWidget2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
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
                    child: Image.asset("${widget.tea1.IMG}"),
                  )),
                ],
              )),
          SizedBox(
            width: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${widget.tea1.name}",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColor.lemonteatext),
              ),
              Text("${widget.tea1.title}",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColor.widget)),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom:30.0),
                child: Text("\$",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColor.dollor)),
              ),
              Text(
                "${widget.tea1.dollor}",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: AppColor.lemonteatext),
              ),
            ],
          )
        ],
      ),
    );
  }
}
