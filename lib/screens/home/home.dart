import 'package:aik_sushi/components/tab_header.dart';
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
  // tabs + tab icons
  final List<Widget> tabs = [
    TabHeaderComponent(iconPath: 'lib/icons/sushi.png'),
    TabHeaderComponent(iconPath: 'lib/icons/donut.png'),
    TabHeaderComponent(iconPath: 'lib/icons/burger.png'),
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

  /// Builds the main UI for the home screen with a tabbed interface.
  ///
  /// The screen consists of an app bar with menu and profile icons, a title
  /// indicating the user's current choice, a tab bar for navigation, and a
  /// tab view displaying content corresponding to each tab.
  /// The tab bar uses icons for sushi, donut, and burger, and the tab views
  /// display the respective food categories.
  Widget build(BuildContext context) {
    const int shadeOf = 50;
    const double sizeOf = 24;

    //Tab controller
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('🍣.🍩.🍔'),
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

            //Tab bar
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

            //Tab bar view
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
