import 'dart:ffi';

import 'package:firebase/Components/tips.dart';
import 'package:firebase/config.dart';
import 'package:flutter/material.dart';

class getStart extends StatefulWidget {
  const getStart({super.key});

  @override
  State<getStart> createState() => _getStartState();
}

class _getStartState extends State<getStart> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height / 3;
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Container(
            height: myHeight * 2,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage('assets/images/tip1.jpg'), fit: BoxFit.contain)),
          ),
          Container(
            height: myHeight,
            decoration: BoxDecoration(
                color: color,
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 8, 5, 5).withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3))
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(80))),
            child: ListView(
              padding: EdgeInsets.only(right: 20, top: 15),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('اشهى الماكولات',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    Text(
                        'افضل الماكولات تجدونها في مطعمنا العديد من الماكولات لدينا',
                        style: TextStyle(color: Color.fromARGB(255, 250, 248, 248), fontSize: 18)),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return tips();
                          }));
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                              right: 40, left: 40, bottom: 5, top: 5),
                          decoration: BoxDecoration(
                              color: BtnBackColor,
                              borderRadius: BorderRadius.circular(25)),
                          child: Text(
                            'ابداء من هنا',
                            style: TextStyle(
                              color: Color.fromARGB(255, 25, 27, 160),
                              fontSize: 20,
                            ),
                          ),
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
