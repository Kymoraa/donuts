import 'package:flutter/material.dart';

class MyTabs extends StatelessWidget {
  final String iconPath;

  const MyTabs({Key? key, required this.iconPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Image.asset(
          iconPath,
          color: Colors.grey[800],
        ),
      ),
    );
  }
}
