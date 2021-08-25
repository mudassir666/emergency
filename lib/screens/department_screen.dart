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
     final appbar = AppBar(
      title: Text(departmentTitle),
      centerTitle: true,
    );
    return Scaffold(
      appBar: appbar,
      body: SafeArea(
        child: Container(
          color: Colors.red.shade900,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                height: (MediaQuery.of(context).size.height -
                            appbar.preferredSize.height -
                            MediaQuery.of(context).padding.top) *
                        0.48,
                child: DepartmentOrganizations(
                  organizationId: organizations[index].id,
                  title: organizations[index].title,
                  imageUrl: organizations[index].imageUrl,
                  time: organizations[index].time,
                ),
              );
            },
            itemCount: organizations.length,
          ),
        ),
      ),
    );
  }
}
