import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:smartshopebd/LoginPage/LoginScreen.dart';

import 'HomeScreen/HomeScreen.dart';
import 'SplassScreen/SpalseScreen.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  Widget build(BuildContext context) {

 return GetMaterialApp(
   debugShowCheckedModeBanner: false,
   home: SpalseScreen(),
 );
  }
}