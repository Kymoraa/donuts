import 'package:donuts/pages/pancake_page.dart';
import 'package:donuts/pages/pizza_page.dart';
import 'package:donuts/pages/smoothie_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/my_tabs.dart';
import 'burger_page.dart';
import 'donut_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> myTabs = const [
    // donut tab
    MyTabs(
      tabName: 'Donuts',
      iconPath: 'assets/icons/donut.png',
    ),
    // burger tab
    MyTabs(
      tabName: 'Burgers',
      iconPath: 'assets/icons/burger.png',
    ),
    // smoothie tab
    MyTabs(
      tabName: 'Smoothies',
      iconPath: 'assets/icons/smoothie.png',
    ),
    // pancake tab
    MyTabs(
      tabName: 'Pancakes',
      iconPath: 'assets/icons/pancakes.png',
    ),
    // pizza tab
    MyTabs(
      tabName: 'Pizzas',
      iconPath: 'assets/icons/pizza.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                CupertinoIcons.bars,
                color: Colors.grey[700],
                size: 30,
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  CupertinoIcons.person_circle,
                  color: Colors.grey[700],
                  size: 30,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
        body: Column(
          children: [
            // opening text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18.0),
              child: Row(
                children: const [
                  Text(
                    'I want to',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Eat',
                    style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            // tab bar
            TabBar(
              tabs: myTabs,
            ),
            // tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  // donut page
                  DonutPage(),
                  // burger page
                  const BurgerPage(),
                  // smoothie page
                  const SmoothiePage(),
                  // pancake page
                  const PancakePage(),
                  // pizza page
                  const PizzaPage()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
