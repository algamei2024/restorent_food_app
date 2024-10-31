import 'package:firebase/Components/account/register.dart';
import 'package:firebase/config.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_outlined)),
        ),
        //===========================
        body: Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                  child: Form(
                child: ListView(
                  children: [
                    Container(
                      child: Text(
                        'نسيت كلمة المرور',
                        style: TextStyle(
                          color: txtColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'قم بإدخال الايمل الصحيح ليتم إرسال كلمة المرور اليك',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      margin: EdgeInsets.only(top: 15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'البريد الالكتروني', border: InputBorder.none),
                        validator: (value) {
                          if (value!.indexOf('.') == -1 ||
                              value.indexOf('@') == -1) {
                            return 'الرجاء ادخال البريد الالكتروني';
                          }
                        },
                      ),
                    ),
                    MaterialButton(onPressed:(){},
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      child: Text('إرسال',style: TextStyle(fontSize: 25,color: Colors.white),),
                       padding: EdgeInsets.only(top: 8, bottom: 8),
                        margin: EdgeInsets.only(top: 15.0),
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(20),
                        ),
                    ),
                    ),
                  ],
                ),
              )),
            ],
          ),
        ));
  }
}
