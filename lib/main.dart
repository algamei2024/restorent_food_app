import 'dart:async';
import 'dart:math';
import 'package:firebase/Components/getStart.dart';
import 'package:firebase/Components/home/home.dart';
import 'package:firebase/config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) =>
          Directionality(textDirection: TextDirection.rtl, child: child!),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 216, 93, 26)),
        useMaterial3: true,
      ),
      routes: {
        '/getStart': (context) => getStart(),
      },
      home: Splach(),
    );
  }
}

class Splach extends StatefulWidget {
  @override
  State<Splach> createState() => _SplachState();
}

class _SplachState extends State<Splach> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/getStart');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
//=====================================
        body: Center(
          child: SizedBox.expand(
            child: Container(
              color: Color.fromARGB(255, 240, 241, 242),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      color: Color.fromARGB(255, 63, 98, 134),
                    ),
                    Text(
                      'مرحباً بك في تطبيقنا',
                      style: TextStyle(
                        color: Color.fromARGB(255, 63, 98, 134),
                        fontSize: 25,
                        fontFamily: AutofillHints.photo,
                      ),
                    ),
                  ]),
            ),
          ),
        ),
//=================================
        // bottomNavigationBar: BottomNavigationBar(items: const [
        //   BottomNavigationBarItem(icon: Icon(Icons.contact_emergency))
        // ]),
      ),
    );
  }
}
