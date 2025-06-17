import 'package:flutter/material.dart';
import '../../app_color/app_color.dart';
import 'card_culture.dart';

class ProgressCulturePage extends StatefulWidget {
  const ProgressCulturePage({super.key});

  @override
  State<ProgressCulturePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<ProgressCulturePage> {
  @override
  Widget build(BuildContext context) {
    List<CardCulture> cards = [
      const CardCulture(
        title: '아라, NEXT',
        description: '2023.12.15 ~ 2024.3.31',
        pictureName: 'culture1',
      ),
      const CardCulture(
        title: '',
        description: '',
        pictureName: 'culture1',
      ),
      const CardCulture(
        title: '',
        description: '',
        pictureName: 'culture1',
      ),
      const CardCulture(
        title: '',
        description: '',
        pictureName: 'culture1',
      ),
      const CardCulture(
        title: '',
        description: '',
        pictureName: 'culture1',
      ),
      const CardCulture(
        title: '',
        description: '',
        pictureName: 'culture1',
      ),
      const CardCulture(
        title: '',
        description: '',
        pictureName: 'culture1',
      ),
      const CardCulture(
        title: '',
        description: '',
        pictureName: 'culture1',
      ),
      const CardCulture(
        title: '',
        description: '',
        pictureName: 'culture1',
      ),
    ];

    return Container(
      decoration: const BoxDecoration(
        color: AppColor.textColor4,
      ),
      child: GridView.count(
        primary: false,
        childAspectRatio: (1 / 1.35),
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        crossAxisCount: 2,
        children: cards.map((card) => card).toList(),
      ),
    );
  }
}
