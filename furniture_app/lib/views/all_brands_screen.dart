import 'package:flutter/material.dart';

class MyAllBrands extends StatefulWidget {
  static const String routeName = "/allBrands";
  const MyAllBrands({super.key});

  @override
  State<MyAllBrands> createState() => _MyAllBrandsState();
}

class _MyAllBrandsState extends State<MyAllBrands> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("All Brands"),),
    );
  }
}