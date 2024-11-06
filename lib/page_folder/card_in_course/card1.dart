import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../app_color/app_color.dart';
import '../card_tab_page/card1_tab_page.dart';
import '../card_tab_page/card2_tab_page.dart';
import '../card_tab_page/card3_tab_page.dart';
import '../card_tab_page/card4_tab_page.dart';
import '../card_tab_page/card5_tab_page.dart';
import '../card_tab_page/card6_tab_page.dart';
import 'package:intl/intl.dart';

class Card1 extends StatefulWidget {
  final String title;
  final String description;
  final double price; // 가격 속성 추가
  final String pictureurl;
  final int index;

  const Card1({
    Key? key,
    required this.title,
    required this.description,
    required this.price,
    required this.pictureurl,
    required this.index,
  }) : super(key: key);

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  bool _isFavorited = false;

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  var f = NumberFormat('###,###,###,###');

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height; // 앱 화면 높이
    double screenWidth = MediaQuery.of(context).size.width; // 앱 화면 넓이

    return SizedBox(
      width: screenWidth * 0.44, // 화면 너비의 44%
      height: screenHeight * 0.27, // 화면 높이의 27%
      child: Card(
        elevation: 0,
        color: AppColor.backGroundColor2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    if (widget.pictureurl ==
                        'https://firebasestorage.googleapis.com/v0/b/soda-project-final.appspot.com/o/Rectangle%20141.png?alt=media&token=39c330ee-4aaf-44ed-ad67-b17eefd5d1b8') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Card1TabPage()));
                    } else if (widget.pictureurl ==
                        'https://firebasestorage.googleapis.com/v0/b/soda-project-final.appspot.com/o/Rectangle%20141%20%E1%84%87%E1%85%A9%E1%86%A8%E1%84%89%E1%85%A1%E1%84%87%E1%85%A9%E1%86%AB.png?alt=media&token=9f522e16-6069-40a2-b77d-3c72dcd160c7') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Card2TabPage()));
                    } else if (widget.pictureurl ==
                        'https://firebasestorage.googleapis.com/v0/b/soda-project-final.appspot.com/o/Rectangle%201413.png?alt=media&token=fd5bc6cf-e10e-4d5d-a31a-e2c913005bda') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Card3TabPage()));
                    } else if (widget.pictureurl ==
                        'https://firebasestorage.googleapis.com/v0/b/soda-project-final.appspot.com/o/Rectangle%201414.png?alt=media&token=794d88e5-7946-4f46-809c-1b45d0dd71e5') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Card4TabPage()));
                    } else if (widget.pictureurl ==
                        'https://firebasestorage.googleapis.com/v0/b/soda-project-final.appspot.com/o/Rectangle%201415.png?alt=media&token=34331bb1-b8dc-43b4-9afd-a32ae7567cd4') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Card5TabPage()));
                    } else if (widget.pictureurl ==
                        'https://firebasestorage.googleapis.com/v0/b/soda-project-final.appspot.com/o/Rectangle%201416.png?alt=media&token=76101246-4371-41d4-877d-5f0e004f9e37') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Card6TabPage()));
                    }
                  },
                  child: Stack(
                    children: [
                      SizedBox(
                        width: screenWidth * 0.46, // 화면 너비의 46%
                        height: screenHeight * 0.18, // 화면 높이의 18%
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Image(
                            image: NetworkImage(widget.pictureurl),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        top: screenHeight * 0.15, // 화면 높이의 15%
                        left: screenWidth * 0.25, // 화면 너비의 25%
                        child: Row(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(13),
                                    color: AppColor.appBarColor1,
                                  ),
                                  width: screenWidth * 0.19, // 화면 너비의 19%
                                  height: screenHeight * 0.023, // 화면 높이의 2.3%
                                ),
                                Text(
                                  '${f.format(widget.price.toInt())}원~',
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.18,
                                      color: AppColor.textColor4),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: screenWidth * 0.3,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: screenWidth * 0.089, // 화면 너비의 8.9%
                        height: screenWidth * 0.089, // 화면 너비의 8.9%
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: AppColor.backGroundColor2,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _isFavorited = !_isFavorited;

                            if (_isFavorited) {
                              firestore
                                  .collection("course")
                                  .doc('course${widget.index}')
                                  .set(
                                {
                                  "title": widget.title,
                                  "discription": widget.description,
                                  "URL": widget.pictureurl,
                                  'timestamp': DateTime.now(),
                                  'price': widget.price,
                                },
                              );
                            } else {
                              firestore
                                  .collection("course")
                                  .doc('course${widget.index}')
                                  .delete();
                            }

                            // 파이어베이스에 정보 저장/삭제
                            print(widget.title);
                            print(_isFavorited);
                          });
                        },
                        icon: Icon(
                          _isFavorited ? Icons.favorite : Icons.favorite_border,
                          color: AppColor.appBarColor1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                if (widget.pictureurl ==
                    'https://firebasestorage.googleapis.com/v0/b/soda-project-final.appspot.com/o/Rectangle%20141.png?alt=media&token=39c330ee-4aaf-44ed-ad67-b17eefd5d1b8') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Card1TabPage()));
                } else if (widget.pictureurl ==
                    'https://firebasestorage.googleapis.com/v0/b/soda-project-final.appspot.com/o/Rectangle%20141%20%E1%84%87%E1%85%A9%E1%86%A8%E1%84%89%E1%85%A1%E1%84%87%E1%85%A9%E1%86%AB.png?alt=media&token=9f522e16-6069-40a2-b77d-3c72dcd160c7') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Card2TabPage()));
                } else if (widget.pictureurl ==
                    'https://firebasestorage.googleapis.com/v0/b/soda-project-final.appspot.com/o/Rectangle%201413.png?alt=media&token=fd5bc6cf-e10e-4d5d-a31a-e2c913005bda') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Card3TabPage()));
                } else if (widget.pictureurl ==
                    'https://firebasestorage.googleapis.com/v0/b/soda-project-final.appspot.com/o/Rectangle%201414.png?alt=media&token=794d88e5-7946-4f46-809c-1b45d0dd71e5') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Card4TabPage()));
                } else if (widget.pictureurl ==
                    'https://firebasestorage.googleapis.com/v0/b/soda-project-final.appspot.com/o/Rectangle%201415.png?alt=media&token=34331bb1-b8dc-43b4-9afd-a32ae7567cd4') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Card5TabPage()));
                } else if (widget.pictureurl ==
                    'https://firebasestorage.googleapis.com/v0/b/soda-project-final.appspot.com/o/Rectangle%201416.png?alt=media&token=76101246-4371-41d4-877d-5f0e004f9e37') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Card6TabPage()));
                }
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenHeight * 0.014), // 화면 높이의 1.4%
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.013), // 화면 너비의 1.3%
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.24,
                        color: AppColor.textColor1,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.0106), // 화면 높이의 1.06%
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.013), // 화면 너비의 1.3%
                    child: Text(
                      widget.description,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.18,
                        color: AppColor.textColor2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
