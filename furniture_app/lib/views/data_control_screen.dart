import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_back_icon_button.dart';

class DataControlScreen extends StatelessWidget {
  const DataControlScreen({super.key});

  static const String routeName = "/dataControl";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leadingWidth: 80,
        leading: Container(
          margin: EdgeInsets.only(left: 34, top: 10),
          child: CustomBackIconButton(
            icon: Icons.arrow_back,
            function: Get.back,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Data Control "),
      ),
    );
  }
}
