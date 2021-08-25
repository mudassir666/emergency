import 'package:emergency/screens/department_screen.dart';
import 'package:emergency/screens/services_screem.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.deepPurple,
        brightness: Brightness.light,
        textTheme: ThemeData.light().textTheme.copyWith(
            headline6: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      
      initialRoute: '/',
      routes: {
        '/' : (ctx) => ServicesScreen(),
        DepartmentScreen.routeName : (ctx) => DepartmentScreen(),
      },
    );
  }
}
