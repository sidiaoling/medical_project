import 'package:flutter/material.dart';
import 'package:medical_project/base/color/color.dart';
import 'package:medical_project/base/ui/screen_utils.dart';
import 'package:medical_project/base/extension/widget_extension.dart';
import 'package:medical_project/base/widget/icon_text.dart';
import 'package:medical_project/function/record/item/record_info_item.dart';

class RecordWorkItem extends StatelessWidget {
  final String? dateTitle;
  final String? title;
  final String? infoOne;
  final String? infoTwo;
  final String? countOne;
  final String? countTwo;

  const RecordWorkItem(
      {Key? key,
      this.dateTitle,
      this.title,
      this.infoOne,
      this.infoTwo,
      this.countOne,
      this.countTwo})
      : super(key: key);

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
              'assets/images/work_icon.png',
              width: 30.px,
              height: 30.px,
            ),
          ).marginBottom(
            16.px,
          ),
          RecordInfoItem(
            dateTitle: '2008.07-至今',
            title: '上海交通大学附属瑞金医院',
            infoOne: '儿内科',
            infoTwo: '副主任医师',
            countOne: '846',
            countTwo: '0',
          ),
          RecordInfoItem(
            dateTitle: '2006.06-2008.07',
            title: '上海儿童医学中心',
            infoOne: '儿内科',
            infoTwo: '主治医师',
            countOne: '695',
            countTwo: '0',
          ),
        ],
      ),
    );
  }
}
