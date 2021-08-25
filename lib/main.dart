import 'package:emergency/screens/department_screen.dart';
import 'package:emergency/screens/organization_detail_screen.dart';
import 'package:emergency/screens/services_screem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
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
                 color: Colors.red[900],
                          fontSize: 18,
                          fontWeight: FontWeight.bold
              ),
            ),
      ),
      
      initialRoute: '/',
      routes: {
        '/' : (ctx) => ServicesScreen(),
        DepartmentScreen.routeName : (ctx) => DepartmentScreen(),
        OrganizationDetailScreen.routeName : (ctx) => OrganizationDetailScreen(),
      },
    );
  }
}
