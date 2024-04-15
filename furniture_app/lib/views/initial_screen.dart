import 'package:flutter/material.dart';
import 'package:furniture_app/common/reusable_text.dart';
import 'package:furniture_app/constants/colors.dart';
import 'package:furniture_app/constants/data.dart';

class MyInitialScreen extends StatefulWidget {
  const MyInitialScreen({super.key});

  @override
  State<MyInitialScreen> createState() => _MyInitialScreenState();
}

class _MyInitialScreenState extends State<MyInitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(itemBuilder: (context, index) {
        var data = initData[index];
        return Column(
          children: [
            Image.asset(data["imageUrl"]!),
            MyReusableText(
                content: data["text"]!,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: lightTextColor)
          ],
        );
      }),
    );
  }
}
