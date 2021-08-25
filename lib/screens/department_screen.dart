import 'package:emergency/dummy_data.dart';
import 'package:emergency/widgets/department_organization.dart';
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
      body: Container(
        color: Colors.red.shade900,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return DepartmentOrganizations(
              organizationId: organizations[index].id,
              title: organizations[index].title,
              imageUrl: organizations[index].imageUrl,
              time: organizations[index].time,
            );
          },
          itemCount: organizations.length,
        ),
      ),
    );
  }
}
