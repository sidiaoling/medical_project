import 'package:flutter/material.dart';
import 'package:medical_project/base/ui/screen_utils.dart';
import 'package:medical_project/function/appointment/appointment_page.dart';
import 'package:medical_project/function/record/record_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter_ScreenUtil',
        home: HomePage(),
        onGenerateRoute: (RouteSettings settings) {
          String? name = settings.name;
          return MaterialPageRoute(builder: (context) => RecordPage());
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('simple project')),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(
          top: 100.px,
          bottom: 100.px,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RecordPage.sName);
              },
              child: Text('Record'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppointmentPage.sName);
              },
              child: Text('appointment'),
            ),
            // TextButton(
            //   onPressed: () {},
            //   child: Text('Manage'),
            // ),
          ],
        ),
      ),
    );
  }
}
