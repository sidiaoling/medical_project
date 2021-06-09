import 'package:flutter/material.dart';
import 'package:medical_project/base/ui/screen_utils.dart';

class AppointmentPage extends StatelessWidget {
  static final String sName = "AppointmentPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          '预约',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        // automaticallyImplyLeading: true,
      ),
      body: Container(),
    );
  }
}
