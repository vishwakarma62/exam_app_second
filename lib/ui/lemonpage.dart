import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../intl/app_color.dart';

class LemonPage extends StatefulWidget {
  const LemonPage({super.key});

  @override
  State<LemonPage> createState() => _LemonPageState();
}

class _LemonPageState extends State<LemonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: InkWell(
            highlightColor: Colors.transparent,
            splashFactory: NoSplash.splashFactory,
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
            )),
        iconTheme: IconThemeData(color: Colors.white),
        // leading: Padding(
        //                   padding: const EdgeInsets.only(left: 20.0,top: 10),
        //                   child: InkWell(
        //                       highlightColor: Colors.transparent,
        //                       splashFactory: NoSplash.splashFactory,
        //                       onTap: () {
        //                         Navigator.pop(context);
        //                       },
        //                       child: Container(
        //                          width: 23.5,
        //                         height: 12,
        //                         child: SvgPicture.asset(
        //                           "assets/images/Vector.svg",fit: BoxFit.cover,

        //                         ),
        //                       )),
        //                 ),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: AppColor.lemonpage,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Spacer(),
                          SvgPicture.asset("assets/images/Ellipse 154.svg"),
                        ],
                      ),
                      SizedBox(
                        height: 150,
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 132,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 29),
                          child: Text(
                            "Lemon Tea",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: AppColor.lemonteatext),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:29.0),
                          child: Text(
                            "Good day time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColor.lemonteatext),
                          ),
                        ),
                        SizedBox(
                          height: 21,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:34.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 14.0),
                                child: Text("\$",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.lemonteatext)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 14.0),
                                child: Text("12.99",
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w700,
                                        color: AppColor.lemonteatext)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      //height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(45),
                            topLeft: Radius.circular(45)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 24,
                            ),
                            Text("Particulars",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.lemonteatext)),
                            Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.lemonteatext),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RatingBar.builder(
                              itemSize: 15,
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 1.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: AppColor.darkgreen,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                                setState(() {});
                              },
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 64,
                                  height: 64,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColor.teawidget),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 42.0),
                                    child: Center(
                                      child: Text(
                                        "500 ml",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: AppColor.lemonteatext),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  width: 64,
                                  height: 64,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColor.teawidget),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 42.0),
                                    child: Center(
                                      child: Text(
                                        "Less Ice",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: AppColor.lemonteatext),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  width: 64,
                                  height: 64,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColor.teawidget),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 42.0),
                                    child: Center(
                                      child: Text(
                                        "Suger",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: AppColor.lemonteatext),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 33,
                            ),
                            Text("Services",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.lemonteatext)),
                            Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.lemonteatext)),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //  SvgPicture.asset("assets/images/image 2lemon.svg"),
                Padding(
                  padding: const EdgeInsets.only(left: 45, right: 45, top: 130),
                  child: Row(
                    children: [
                      Spacer(),
                      Image.asset("assets/images/image 2lemon.png"),
                    ],
                  ),
                ),
              ],
            ),

            // SizedBox(
            //   height: 44,
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     width: MediaQuery.of(context).size.width,
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.only(
            //           topRight: Radius.circular(45),
            //           topLeft: Radius.circular(45)),
            //     ),
            //     child: Padding(
            //       padding: const EdgeInsets.symmetric(horizontal:30.0),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           SizedBox(height: 24,),
            //           Text(
            //             "Particulars",
            //             style: TextStyle(
            //                 fontSize: 24,
            //                 fontWeight: FontWeight.w700,
            //                 color: AppColor.lemonteatext),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 73,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 37.0, right: 21),
          child: Row(
            children: [
              Opacity(
                opacity: 0.3,
                child: SvgPicture.asset(
                  "assets/images/Group 585.svg",
                ),
              ),
              SizedBox(
                width: 25.97,
              ),
              Opacity(
                opacity: 0.3,
                child: Image.asset(
                  "assets/images/image 5.png",
                ),
              ),
              Spacer(),
              Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColor.darkgreen),
                child: Center(
                  child: Text(
                    "Purchase",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
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
