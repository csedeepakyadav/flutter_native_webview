import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';

main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        body: new Center(
          child: new FlatButton(
            color: Colors.blue,
            child: new Text('Open Website',style: TextStyle(color: Colors.white),),
            onPressed: () => _launchURL(context),
          ),
        ),
      ),
    );
  }

  void _launchURL(BuildContext context) async {
    try {
      await launch(
        'http://listeningpostdelhilg.in/AuPages/DashBoard/CaseDetailMobile.aspx?Deptcode=SXFgEiOlWks=&fwdtodept=7ssmn1ZyAJY=&statuscat=sPjpjR8jajU=&fromdt=sPjpjR8jajU=&todt=sPjpjR8jajU=&modeid=sPjpjR8jajU=&chk_checked=sPjpjR8jajU=&wurgent=sPjpjR8jajU=&ddldept=sPjpjR8jajU=&subcatid=sJ2gY/dOQG0=&subjectid=sPjpjR8jajU=&divcode=sPjpjR8jajU=&SubDivCode=sPjpjR8jajU=&mpmlaid=sPjpjR8jajU=&ddldiv=sPjpjR8jajU=&pendency=2enzEgTqqvM=&Q_usertype=3&Q_repoffid=0&Q_minid=0&Q_userid=LGO&Digest=RNgsNy8jIulsq17wUg6nFg',
        option: new CustomTabsOption(
          toolbarColor: Theme.of(context).primaryColor,
          enableDefaultShare: true,
          enableUrlBarHiding: true,
          showPageTitle: true,
       //   animation: new CustomTabsAnimation.slideIn()
          // or user defined animation.
          animation: new CustomTabsAnimation(
            startEnter: 'slide_up',
            startExit: 'android:anim/fade_out',
            endEnter: 'android:anim/fade_in',
            endExit: 'slide_down',
          ),
          extraCustomTabs: <String>[
            // ref. https://play.google.com/store/apps/details?id=org.mozilla.firefox
            'org.mozilla.firefox',
            // ref. https://play.google.com/store/apps/details?id=com.microsoft.emmx
            'com.microsoft.emmx',
          ],        
        ),
      );
    } catch (e) {
      // An exception is thrown if browser app is not installed on Android device.
      debugPrint(e.toString());
    }
  }
}