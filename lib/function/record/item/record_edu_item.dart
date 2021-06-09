import 'package:flutter/material.dart';
import 'package:medical_project/base/color/color.dart';
import 'package:medical_project/base/ui/screen_utils.dart';
import 'package:medical_project/base/extension/widget_extension.dart';
import 'package:medical_project/base/widget/icon_text.dart';
import 'package:medical_project/function/record/item/record_info_item.dart';

class RecordEduItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.px, vertical: 16.px),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconText(
            '教育',
            style: TextStyle(
              fontSize: 14.px,
              color: color_FF333333,
              height: 1.1,
            ),
            padding: EdgeInsets.only(right: 6),
            icon: Image.asset(
              'assets/images/edu_icon.png',
              width: 30.px,
              height: 30.px,
            ),
          ).marginBottom(
            16.px,
          ),
          RecordInfoItem(
            dateTitle: '1998.06-2006.05',
            title: '上海交通大学医学院',
            infoOne: '儿内科',
            infoTwo: '博士',
            countOne: '463',
            countTwo: '23',
          ),
        ],
      ),
    );
  }
}
