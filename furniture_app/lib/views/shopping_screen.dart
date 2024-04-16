import 'package:flutter/material.dart';

class MyShoppingScreen extends StatefulWidget {
  const MyShoppingScreen({super.key});

  @override
  State<MyShoppingScreen> createState() => _MyShoppingScreenState();
}

class _MyShoppingScreenState extends State<MyShoppingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Shopping Screen"),
      ),
    );
  }
}