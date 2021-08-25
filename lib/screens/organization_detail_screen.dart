import 'dart:ui';
import 'package:url_launcher/url_launcher.dart';
import 'package:emergency/dummy_data.dart';
//import 'package:emergency/models/organization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OrganizationDetailScreen extends StatelessWidget {
  static const routeName = '/organization-detail';

  @override
  Widget build(BuildContext context) {
    final organizationId = ModalRoute.of(context)!.settings.arguments as String;
    final organization =
        Dummy_Organization.firstWhere((org) => org.id == organizationId);
    final _subject = TextEditingController();
    final _body = TextEditingController();

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
      return FittedBox(
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
      ));
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
          backgroundColor:
              MaterialStateProperty.all(Theme.of(context).primaryColor),
        ),
      );
    }

    Widget customTextField(
        TextEditingController controller, IconData icon, String text) {
      return TextFormField(
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
      );
    }

    final appbar = AppBar(
      title: Text(organization.title),
      centerTitle: true,
    );

    return Scaffold(
      appBar: appbar,
      body: Container(
        height: (MediaQuery.of(context).size.height -
                appbar.preferredSize.height -
                MediaQuery.of(context).padding.top) *
            1,
        color: Colors.red[900],
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Card(
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
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.redAccent, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 10,
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextFormField(
                            readOnly: true,
                            showCursor: false,
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
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
                          SizedBox(
                            height: 5,
                          ),
                          customTextField(
                              _subject, Icons.subject_rounded, 'Subject'),
                          SizedBox(
                            height: 5,
                          ),
                          customTextField(_body, Icons.book_sharp, 'Body'),
                          SizedBox(
                            height: 10,
                          ),
                         customSubmitButton(),
                          SizedBox(
                            height: 10,
                          ),
                          customButton(organization.phone, Icons.call),
                          customButton(organization.webSite, Icons.public),
                        ],
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
