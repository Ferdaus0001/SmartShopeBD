import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartshopebd/LoginPage/LoginScreen.dart';

class SpalseScreen extends StatefulWidget {
  const SpalseScreen({super.key});

  @override
  State<SpalseScreen> createState() => _SpalseScreenState();
}

class _SpalseScreenState extends State<SpalseScreen> {
  @override
  void initState() {
  whaertoGo();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

      ),
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Image/R.jpeg'),
          fit: BoxFit.cover,
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/Image/Animation - 1725172496855.json',width: 350,height: 350,),
        ],
      ),
    ),
    );

  }

  void whaertoGo() async{
    var shared = await SharedPreferences.getInstance();
    shared.getBool('login');
    var isLogint = shared.getBool('login');
    if(isLogint!=null){

    }
    Timer(Duration(seconds: 3), () {
      Get.offAll(LoginScreen());
    });
  }
}
