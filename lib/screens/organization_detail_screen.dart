import 'dart:ui';
import 'package:url_launcher/url_launcher.dart';
import 'package:emergency/dummy_data.dart';
//import 'package:emergency/models/organization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OrganizationDetailScreen extends StatelessWidget {
  static const routeName = '/organization-detail';

  final _subject = TextEditingController();
  final _body = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final organizationId = ModalRoute.of(context)!.settings.arguments as String;
    final organization =
        Dummy_Organization.firstWhere((org) => org.id == organizationId);

    void submit() {
      if (_body.text.isEmpty || _subject.text.isEmpty) {
        return;
      }
      launch(
          'mailto:${organization.email}?subject=${_subject.text}&body=${_body.text}');
      print(_body.text);
      print(_subject.text);
      _body.clear();
      _subject.clear();
    }

    Widget customButton(String data, IconData icon) {
      return Expanded(
        child: FittedBox(
            child: ElevatedButton.icon(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
          onPressed: data == organization.phone
              ? () {
                  launch('tel:$data');
                }
              : () {
                  launch(data);
                },
          icon: Icon(
            icon,
            color: Colors.red[900],
          ),
          label: Text(
            data,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        )),
      );
    }

    Widget customSubmitButton() {
      return ElevatedButton(
        onPressed: submit,
        child: Text(
          "Submit",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.red),
        ),
      );
    }

    Widget customTextField(
        TextEditingController controller, IconData icon, String text) {
      return Expanded(
        child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            icon: Icon(
              icon,
              color: Colors.red[900],
            ),
            hintText: text,
            hintStyle: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      );
    }

    Widget space(AppBar appbar, double no) {
      return SizedBox(
        height: (MediaQuery.of(context).size.height -
                appbar.preferredSize.height -
                MediaQuery.of(context).padding.top) *
            no,
      );
    }

    final appbar = AppBar(
      title: Text(organization.title),
      centerTitle: true,
    );

    return Scaffold(
      appBar: appbar,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.red[900],
            child: Column(
              children: [
                Container(
                  height: (MediaQuery.of(context).size.height -
                          appbar.preferredSize.height -
                          MediaQuery.of(context).padding.top) *
                      0.40,
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.redAccent, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 10,
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FittedBox(
                          child: Image.network(
                            organization.imageUrl,
                            fit: BoxFit.cover,
                            // width: double.infinity,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: (MediaQuery.of(context).size.height -
                          appbar.preferredSize.height -
                          MediaQuery.of(context).padding.top) *
                      0.60,
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.redAccent, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 10,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextFormField(
                                readOnly: true,
                                showCursor: false,
                                decoration: InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  icon: Icon(
                                    Icons.email,
                                    color: Colors.red[900],
                                  ),
                                  hintText: 'Email : ${organization.email}',
                                  hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            // SizedBox(
                            //   height: 5,
                            // ),
                            customTextField(
                                _subject, Icons.subject_rounded, 'Subject'),
                            // SizedBox(
                            //   height: 5,
                            // ),
                            customTextField(_body, Icons.book_sharp, 'Body'),
                            space(appbar, 0.033),
                            customSubmitButton(),
                            space(appbar, 0.015),
                            customButton(organization.phone, Icons.call),
                            space(appbar, 0.015),
                            customButton(organization.webSite, Icons.public),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
