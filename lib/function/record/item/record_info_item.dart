import 'package:flutter/material.dart';
import 'package:medical_project/base/color/color.dart';
import 'package:medical_project/base/ui/screen_utils.dart';
import 'package:medical_project/base/extension/widget_extension.dart';
import 'package:medical_project/base/widget/icon_text.dart';

class RecordInfoItem extends StatelessWidget {
  final String? dateTitle;
  final String? title;
  final String? infoOne;
  final String? infoTwo;
  final String? countOne;
  final String? countTwo;

  const RecordInfoItem(
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
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.px),
        height: 80.px,
        decoration: new BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: color_14000000,
              offset: Offset(0.0, 4),
              blurRadius: 4,
            ),
          ],
          //背景
          color: Colors.white,
          //设置四周圆角 角度
          borderRadius: BorderRadius.all(
            Radius.circular(
              8.0.px,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$dateTitle',
                  style: TextStyle(color: color_FF999999),
                ),
                Text(
                  '$title',
                  style: TextStyle(
                    color: color_FF333333,
                    fontSize: 14.px,
                  ),
                ),
              ],
            ).marginTop(16.px).marginBottom(16.px),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: <Widget>[
                    Text('$infoOne').marginRight(5.px),
                    Text('$infoTwo'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    IconText(
                      '$countOne',
                      style: TextStyle(
                        fontSize: 14.px,
                        color: color_FF333333,
                        height: 1.1,
                      ),
                      padding: EdgeInsets.only(right: 6),
                      icon: Image.asset(
                        'assets/images/count_one.png',
                        width: 18.px,
                        height: 18.px,
                      ),
                    ).marginRight(5.px),
                    IconText(
                      '$countTwo',
                      style: TextStyle(
                        fontSize: 14.px,
                        color: color_FF333333,
                        height: 1.1,
                      ),
                      padding: EdgeInsets.only(right: 6),
                      icon: Image.asset(
                        'assets/images/count_two.png',
                        width: 18.px,
                        height: 18.px,
                      ),
                    ),
                  ],
                ),
              ],
            ).marginTop(16.px).marginBottom(16.px),
          ],
        ),
      ),
    );
  }
}
