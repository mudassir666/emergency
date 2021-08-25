import 'package:emergency/dummy_data.dart';
import 'package:emergency/widgets/services_departments.dart';
import 'package:flutter/material.dart';

class ServicesScreen extends StatefulWidget {
  // static const routeName = '/';

  @override
  _ServicesScreenState createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade900,
      child: GridView(
        children: Dummy_Departments.map((depData) => ServicesDepartments(
            depData.id, depData.title, depData.imageUrl)).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
        ),
      ),
    );
  }
}
