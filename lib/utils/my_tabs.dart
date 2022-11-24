import 'package:flutter/material.dart';

class MyTabs extends StatelessWidget {
  final String iconPath;
  final String tabName;

  const MyTabs({
    Key? key,
    required this.iconPath,
    required this.tabName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12.0),
                // border: Border.all(
                //   color: Colors.black54,
                // )
            ),
            child: Image.asset(
              iconPath,
              color: Colors.grey[800],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            tabName,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 9,
            ),
          ),
        ],
      ),
    );
  }
}
