import 'package:emergency/screens/department_screen.dart';
import 'package:flutter/material.dart';

class ServicesDepartments extends StatelessWidget {
  //const ServicesDepartments({ Key? key }) : super(key: key);
  final String id;
  final String title;
  final String imageUrl;

  ServicesDepartments(this.id, this.title, this.imageUrl);

  void departmentScreen(BuildContext ctx) {
    Navigator.pushNamed(
      ctx,
      DepartmentScreen.routeName,
      arguments: {
        'id' : id,
        'title' : title,
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      onTap: () => departmentScreen(context),
      child: Container(
        padding: EdgeInsets.all(6),
        //  margin: EdgeInsets.all(6),
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.redAccent, width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Image.network(
              imageUrl,
              fit: BoxFit.contain,
            )),
          ),
        ),
      ),
    );
  }
}
