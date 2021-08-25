import 'package:emergency/models/organization.dart';
import 'package:emergency/screens/organization_detail_screen.dart';
import 'package:flutter/material.dart';

class DepartmentOrganizations extends StatelessWidget {
  final String organizationId;
  final String title;
  final String imageUrl;
  final Time time;

  DepartmentOrganizations({
    required this.organizationId,
    required this.title,
    required this.imageUrl,
    required this.time,
  });

  String get timeText {
    switch (time) {
      case Time.Morning:
        return 'Morning';
      case Time.Night:
        return 'Night';
      case Time.Open_24_Hours:
        return "Open 24 Hours";
      default:
        return "Unknown";
    }
  }

  void organiztionDetailScreen(BuildContext ctx) {
    Navigator.pushNamed(ctx, OrganizationDetailScreen.routeName,
    arguments: organizationId);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => organiztionDetailScreen(context),
      child: Container(
        child: Card(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.redAccent, width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 10,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.network(
                  imageUrl, fit: BoxFit.cover,
                  height: 250,
                  //  width: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.av_timer,
                      color: Colors.red[900],
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      timeText,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    //Text()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
