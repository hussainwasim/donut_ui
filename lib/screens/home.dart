import 'package:donut_ui/screens/tabs/burger.dart';
import 'package:donut_ui/screens/tabs/donut.dart';
import 'package:donut_ui/screens/tabs/pancakes.dart';
import 'package:donut_ui/screens/tabs/pizza.dart';
import 'package:donut_ui/screens/utils/my_tab.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> myTabs = [
    MyTab(
      IconPath: 'assets/icons/donut.png',
    ),
    MyTab(
      IconPath: 'assets/icons/burger.png',
    ),
    MyTab(
      IconPath: 'assets/icons/pancakes.png',
    ),
    MyTab(
      IconPath: 'assets/icons/pizza.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                size: 36,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  size: 36,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Text(
                    "I want to",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "EAT",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            //Tabs
            TabBar(
              tabs: myTabs,
            ),
            Expanded(
                child: TabBarView(
              children: [
                DonutTab(),
                BurgerTab(),
                PancakesTab(),
                PizzaTab(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
