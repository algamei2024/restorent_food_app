import 'dart:ffi';

import 'package:firebase/Components/account/register.dart';
import 'package:firebase/config.dart';
import 'package:firebase/widgets/tips/tips.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class tips extends StatefulWidget {
  const tips({super.key});

  @override
  State<tips> createState() => _tipsState();
}

class _tipsState extends State<tips> {
//======== page controller========
  final PageController _pageController = PageController();
  int currentPage = 0;
//===============================
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.round();
      });
    });
  }

  //==============================
  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  //==================================
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height / 5;
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Container(
              height: myHeight * 4,
              child: Column(
                children: [
                  //=====================
                  Expanded(
                    child: PageView(
                      controller: _pageController,
                      allowImplicitScrolling: true,
                      children: childrenPageView(),
                      pageSnapping: true,
                    ),
                  ),
                  //=========================
                  SmoothPageIndicator(
                      controller: _pageController,
                      count: myarr.length,
                      effect: SlideEffect(
                          spacing: 10.0,
                          radius: 20.0,
                          dotWidth: 15,
                          dotHeight: 15,
                          paintStyle: PaintingStyle.stroke,
                          strokeWidth: 1.5,
                          dotColor: Colors.grey,
                          activeDotColor: Color.fromARGB(255, 235, 9, 9)))
                ],
              )),
          //=======================================
          Container(
            height: myHeight,
            child: ListView(
              padding: EdgeInsets.only(right: 20, top: 15),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },
                      child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                              color: Colors.red),
                          child:Text(
                              'إنشاء حساب',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            color: Colors.grey),
                        child: ListTile(
                          title: Text(
                            'متابعة بإستخدام الفيس بوك',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          trailing: Icon(Icons.facebook),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
