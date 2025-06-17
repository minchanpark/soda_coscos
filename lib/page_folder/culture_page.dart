import 'package:flutter/material.dart';

import '../app_color/app_color.dart';
import 'progress_culture/progress_culture.dart';
import 'progress_culture/scheduled_culture.dart';

class CulturePage extends StatelessWidget {
  const CulturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.textColor4,
          title: const Padding(
            padding: EdgeInsets.only(top: 38, bottom: 38),
            child: Text(
              '문화',
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                  height: 1.0,
                  letterSpacing: -0.49),
              textAlign: TextAlign.center,
            ),
          ),
          bottom: const TabBar(
            indicatorColor: AppColor.navigationBarColor1, // Indicator Color
            labelColor: AppColor.textColor1, // Selected Tab Color
            unselectedLabelColor: AppColor.appBarColor2, // Unselected Tab Color
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: <Widget>[
              Tab(
                child: Text(
                  '진행중인',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ),
              Tab(
                child: Text(
                  '예정된',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            ProgressCulturePage(),
            ScheduledCulturePage(),
          ],
        ),
      ),
    );
  }
}
