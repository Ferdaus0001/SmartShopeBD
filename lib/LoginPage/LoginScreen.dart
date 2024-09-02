import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartshopebd/HomeScreen/HomeScreen.dart';
import 'package:shared_preferences_android/shared_preferences_android.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 var naemContololer = TextEditingController();
 var Passwordcontoloer = TextEditingController();
 var naemValue =' NO Save Data Found ';
 var passwordValue = ' No Save Data Found ';
  @override
  void initState() {
     GetValue();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 3,
        title: Row(
          children: [
            Lottie.asset('assets/Image/Animation - 1725172496855.json',
                height: 120, width: 120),
            Text.rich(TextSpan(
                text: 'login',
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.black))),
            Text.rich(TextSpan(
                text: 'Page',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.blue)))
          ],
        ),
      ),
   body:SingleChildScrollView(
     child: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Container(
         decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage('assets/Image/login.png',),
               fit: BoxFit.cover,
             )
         ),
         child: Column(


              mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [


           Lottie.asset('assets/Image/Searce_Animation - 1725175336156.json',width: 250,height: 250),
           SizedBox(height: 5,),


           TextField(
             controller: naemContololer,
             decoration: InputDecoration(

               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(15),
                 borderSide: BorderSide(
                   color: Colors.blue,
                   width: 3,
                   style: BorderStyle.solid,
                 ),
               ),
             ),
           ),

           /// Password Field
           SizedBox(height: 7,),
           TextField(
              obscureText: true,
             controller: Passwordcontoloer,

             decoration: InputDecoration(

               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(15),
                 borderSide: BorderSide(
                   color: Colors.blue,
                   width: 3,
                   style: BorderStyle.solid,
                 ),
               ),
             ),
           ),
           ElevatedButton(onPressed: () async{
             Get.snackbar('Massage', 'Save Your Data Sir ');
             var password = Passwordcontoloer.text.toString();
             var naem = naemContololer.text.toString();
             var prefs =  await SharedPreferences.getInstance();
             prefs.setString('password', password);
             prefs.setString('naem', naem);
           }, child: Text('Login')),
           Text('Name is $naemValue'),
         SizedBox(height: 5,),
           Text(' password is..$passwordValue'),
         ],

            ),
       ),
     ),
   )

    );
  }

  void GetValue() async{
    var prefs = await SharedPreferences.getInstance();
    var getname= prefs.getString('naem');
    var getpasword = prefs.getString('password');
     passwordValue = getpasword!;
    naemValue = getname!;
    setState(() {

    });
  }
}
