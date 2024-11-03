import 'package:aik_sushi/components/tab.dart';
import 'package:aik_sushi/screens/home/tabs/burger.dart';
import 'package:aik_sushi/screens/home/tabs/donut.dart';
import 'package:aik_sushi/screens/home/tabs/sushi.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // tabs
  final List<Widget> tabs = [
    TabComponent(iconPath: 'lib/icons/sushi.png'),
    TabComponent(iconPath: 'lib/icons/donut.png'),
    TabComponent(iconPath: 'lib/icons/burger.png'),
  ];

  // tabView
  final List<Widget> tabViews = [
    //Sushi screen
    SushiTab(),

    //Donut screen
    DonutTab(),

    //Burger screen
    BurgerTab(),
  ];

  @override
  Widget build(BuildContext context) {
    const int shadeOf = 50;
    const double sizeOf = 24;

    //Tab controller
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('😋'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: sizeOf,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: Icon(
                Icons.person,
                color: Colors.black,
                size: sizeOf,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            //Hungry?
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 16.0),
              child: Row(
                children: [
                  const Text(
                    "I want ",
                    style: TextStyle(fontSize: sizeOf),
                  ),
                  Text(
                    "Sushi!",
                    style: TextStyle(
                      fontSize: sizeOf,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
            ),

            //Spacer
            // const SizedBox(
            //   height: 16,
            // ),

            //tab bar
            TabBar(
              indicatorColor: Colors.blueGrey[shadeOf],
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 16.0,
              dividerColor: Colors.transparent,
              tabs: tabs,
            ),

            //Spacer
            SizedBox(
              height: 16,
              width: double.infinity,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[shadeOf],
                ),
              ),
            ),

            //tab bar view
            Expanded(
              child: Container(
                color: Colors.blueGrey[shadeOf],
                child: TabBarView(
                  children: tabViews,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
