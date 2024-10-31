import 'dart:ffi';

import 'package:firebase/config.dart';
import 'package:flutter/material.dart';

List myarr = [
  {
    "title": 'ابحث عن الماكولات التي تحبها ',
    "info": 'كل الاطعمه تجدها في التطبيق من هنا يمكنك البدء',
    "image": 'assets/images/tip1.jpg',
  },
  {
    "title": 'ابحث عن الماكولات التي تحبها ',
    "info": 'كل الاطعمه تجدها في التطبيق من هنا يمكنك البدء',
    "image": 'assets/images/tip2.jpg',
  },
  {
    "title": 'ابحث عن الماكولات التي تحبها ',
    "info": 'كل الاطعمه تجدها في التطبيق من هنا يمكنك البدء',
    "image": 'assets/images/tip3.jpg',
  },
];
Widget WText(String txt, Color tColor, double fSize, double bpadding) {
  return Padding(
    padding: EdgeInsets.only(bottom: bpadding),
    child: Text(
      txt,
      style: TextStyle(
        color: tColor,
        fontSize: fSize,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

List<Widget> childrenPageView() {
  return myarr.map((item) {
    return Column(
      children: [
        Expanded(
            child: Container(
          alignment: Alignment.center,
          child: Image.asset(
            item['image'],
            fit: BoxFit.cover,
          ),
        )),
        WText(item['title'], txtColor, 24, 3),
        WText(item['info'], txt2Color, 16, 60)
      ],
    );
  }).toList();
}
