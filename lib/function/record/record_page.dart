import 'package:flutter/material.dart';
import 'package:medical_project/function/record/item/record_image_item.dart';
import 'package:medical_project/base/ui/screen_utils.dart';
import 'package:medical_project/function/record/item/record_edu_item.dart';
import 'package:medical_project/function/record/item/record_work_item.dart';

class RecordPage extends StatelessWidget {
  static final String sName = "RecordPage";

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
          '履历',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        // automaticallyImplyLeading: true,
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 8.px,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [RecordImageItem(), RecordEduItem(), RecordWorkItem()],
          ),
        ),
      ),
    );
  }
}
