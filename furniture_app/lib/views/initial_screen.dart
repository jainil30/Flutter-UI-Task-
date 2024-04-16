import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/common/reusable_text.dart';
import 'package:furniture_app/constants/data.dart';

class MyInitialScreen extends StatefulWidget {
  static const String routeName = "/init";
  const MyInitialScreen({super.key});

  @override
  State<MyInitialScreen> createState() => _MyInitialScreenState();
}

class _MyInitialScreenState extends State<MyInitialScreen> {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: PageView.builder(
        itemCount: initData.length,
        itemBuilder: (context, index) {
        var data = initData[index];
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(data["imageUrl"]!),
           MyReusableText(
                    content: data["text"]!,
                    style: theme.textTheme.displayMedium!.copyWith(fontWeight: FontWeight.w500,fontSize: 30),),
          ],
        );
      }),
    );
  }
}
