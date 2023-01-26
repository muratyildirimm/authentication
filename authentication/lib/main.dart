import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:olacak/pages/login.dart';
import 'package:olacak/url_sign_in/mail_and_phone.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle.dark;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(backgroundColor: Colors.black38,centerTitle: true, shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))  ),
     textTheme: TextTheme(headline4: TextStyle(color: Colors.pink),headline6: TextStyle(color: Colors.blueGrey),),
    // textTheme: TextTheme(headline6: TextStyle(color: Colors.amber)),
    elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.pinkAccent),shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
            )), )),
        useMaterial3: true,

      ),
      home:  LoginPage(),
    );
  }
}

