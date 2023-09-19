import 'package:exam_app_second/model/tea_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../intl/app_color.dart';

class TeaWidget extends StatefulWidget {
  TeaWidget({super.key, required this.tea});
  TeaModel tea;

  @override
  State<TeaWidget> createState() => _TeaWidgetState();
}

class _TeaWidgetState extends State<TeaWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 122,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColor.teawidget,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("${widget.tea.IMG}"),
          SizedBox(
            height: 12,
          ),
          Text(
            "${widget.tea.name}",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColor.lemonteatext),
          )
        ],
      ),
    );
  }
}
