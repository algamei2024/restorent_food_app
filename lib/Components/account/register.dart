import 'package:firebase/Components/account/login.dart';
import 'package:firebase/config.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                        'انشى حسابك',
                        style: TextStyle(
                          color: txtColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'الجديد',
                        style: TextStyle(
                          color: txtColor,
                          fontSize: 30,
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
                            hintText: 'الاسم الكامل', border: InputBorder.none),
                        validator: (value) {
                          if (value!.isEmpty || value.length < 3) {
                            return 'الرجاء ادخال الاسم الكامل';
                          }
                        },
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
                            hintText: 'البريد الالكتروني',
                            border: InputBorder.none),
                        validator: (value) {
                          if (value!.indexOf('.') == -1 ||
                              value.indexOf('@') == -1) {
                            return 'الرجاء ادخال البريد الالكتروني';
                          }
                        },
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
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'كلمة المرور', border: InputBorder.none),
                        validator: (value) {
                          if (value!.isEmpty || value.length < 6) {
                            return 'الرجاء ادخال كلمة المرور';
                          }
                        },
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
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            suffix: Text('+967'),
                            hintText: 'رقم الهاتف',
                            border: InputBorder.none),
                        validator: (value) {
                          if (value!.isEmpty || value.length < 5) {
                            return 'الرجاء ادخال رقم الهاتف';
                          }
                        },
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        child: Text(
                          'تسجيل',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        padding: EdgeInsets.only(top: 8, bottom: 8),
                        margin: EdgeInsets.only(top: 15.0),
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      child: Text(
                          'عند الضعط على الشروط والاحكام انت توافق على قوانين التطبيق'),
                    )
                  ],
                ),
              )),
              Container(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'اذا لديك حساب  سجل الدخول',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    child: Text(
                      'دخول',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
                    },
                  ),
                ]),
              )
            ],
          ),
        ));
  }
}
