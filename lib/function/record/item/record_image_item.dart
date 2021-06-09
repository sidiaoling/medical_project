import 'package:flutter/material.dart';
import 'package:medical_project/base/color/color.dart';
import 'package:medical_project/base/widget/icon_text.dart';
import 'package:medical_project/base/ui/screen_utils.dart';
import 'package:medical_project/base/extension/widget_extension.dart';

class RecordImageItem extends StatelessWidget {
  const RecordImageItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.px),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconText(
            '资质',
            style: TextStyle(
              fontSize: 14.px,
              color: color_FF333333,
              height: 1.1,
            ),
            padding: EdgeInsets.only(right: 6),
            icon: Image.asset(
              'assets/images/icon1.png',
              width: 30.px,
              height: 30.px,
            ),
          ).marginBottom(
            16.px,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: RecordImageInfoItem(
                  title: '职业证',
                ).paddingRight(6.px),
              ),
              Expanded(
                child: RecordImageInfoItem(
                  title: '资格证',
                ).paddingRight(6.px),
              ),
              Expanded(
                  child: RecordImageInfoItem(
                title: '职称证',
              )),
            ],
          ),
        ],
      ),
    );
  }
}

class RecordImageInfoItem extends StatelessWidget {
  final String title;

  const RecordImageInfoItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.px,
      ),
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
      child: Column(
        children: [
          Container(
              child: Stack(
            children: [
              Container(
                child: Image.asset(
                  'assets/images/image_info.png',
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.px,
                    vertical: 5.px,
                  ),
                  decoration: new BoxDecoration(
                    //背景
                    color: color_60333333,
                    //设置四周圆角 角度
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: IconText(
                    '2',
                    style: TextStyle(
                      fontSize: 14.px,
                      color: Colors.white,
                      height: 1.1,
                    ),
                    padding: EdgeInsets.only(right: 6),
                    icon: Image.asset(
                      'assets/images/image_count.png',
                      width: 21.px,
                      height: 16.px,
                    ),
                  ),
                ),
              )
            ],
          )),
          Text(title),
        ],
      ),
    );
  }
}
