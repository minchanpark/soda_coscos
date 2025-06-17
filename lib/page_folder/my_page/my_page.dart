import 'package:flutter/material.dart';
import '../../app_color/app_color.dart';
import 'my_collection.dart';
import 'my_custom_in_my_page.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height; // 화면 높이
    double screenWidth = MediaQuery.of(context).size.width; // 화면 너비

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColor.textColor4,
        title: const Text(
          '마이 페이지',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.49,
            height: 1.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: AppColor.textColor4),
          padding: EdgeInsets.only(
            left: screenWidth * 0.05,
            top: screenHeight * 0.05,
            right: screenWidth * 0.05,
          ),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyCollectionPage()));
                },
                child: Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.35,
                  decoration: BoxDecoration(
                    color: AppColor.appBarColor1,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/mypage.png',
                        width: screenWidth * 0.9,
                        height: screenHeight * 0.35,
                        fit: BoxFit.cover,
                      ),
                      Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: screenWidth * 0.24,
                              height: screenHeight * 0.05,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColor.appBarColor1,
                              ),
                            ),
                            const Text(
                              '나의 찜',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyCustomInMyPage()));
                },
                child: Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.35,
                  decoration: BoxDecoration(
                    color: AppColor.appBarColor1,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/mypage_1.png',
                        width: screenWidth * 0.9,
                        height: screenHeight * 0.35,
                        fit: BoxFit.cover,
                      ),
                      Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: screenWidth * 0.3,
                              height: screenHeight * 0.05,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColor.appBarColor1,
                              ),
                            ),
                            const Text(
                              '나의 커스텀',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
