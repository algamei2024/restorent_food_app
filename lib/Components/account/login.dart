import 'package:firebase/Components/account/forgetPassword.dart';
import 'package:firebase/Components/account/register.dart';
import 'package:firebase/config.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                        'تسجيل الدخول',
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
                            hintText: 'البريد الالكتروني', border: InputBorder.none),
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
                      child: Row(children: [
                        Expanded(
                          child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: 'كلمة المرور',
                                    border: InputBorder.none),
                                validator: (value) {
                                  if (value!.isEmpty || value.length < 6) {
                                    return 'الرجاء ادخال كلمة المرور';
                                  }
                                },
                              ),
                        ),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
                              },
                              child: Text('نسيت',style: TextStyle(color: Colors.red),),
                            )
                      ],)
                    ),
                    MaterialButton(onPressed:(){},
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      child: Text('دخول',style: TextStyle(fontSize: 25,color: Colors.white),),
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
              Container(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("اذا كان ليس لديك حساب سجل من",style: TextStyle(fontSize: 16),),
                  SizedBox(width: 10,),
                  GestureDetector(
                    child:Text('هنا',style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                    ),),onTap: (){
                         Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },),
                ]),
              )
            ],
          ),
        ));
  }
}
