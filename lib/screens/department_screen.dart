import 'package:emergency/dummy_data.dart';
import 'package:flutter/material.dart';

class DepartmentScreen extends StatelessWidget {
  static const routeName = '/department-services';
  @override
  Widget build(BuildContext context) {
    final routeData =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final departmentTitle = routeData['title'].toString();
    final departmentId = routeData['id'].toString();
    final organizations = Dummy_Organization.where((id) {
      return id.departmentId.contains(departmentId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(departmentTitle),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Text(organizations[index].title);
          },
          itemCount: organizations.length,
        ),
      ),
    );
  }
}
