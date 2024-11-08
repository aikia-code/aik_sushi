import 'package:aik_sushi/components/tab_header.dart';
import 'package:aik_sushi/screens/home/food_tabs/burger.dart';
import 'package:aik_sushi/screens/home/food_tabs/donut.dart';
import 'package:aik_sushi/screens/home/food_tabs/sushi.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
      vsync: this,
      length: 3,
    );
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const int shadeOf = 50;
    const double sizeOf = 24;

    //Tab controller
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('🍣.🍩.🍔'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Icon(
            Icons.menu,
            color: Colors.pink,
            size: sizeOf,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24.0),
            child: Icon(
              Icons.person,
              color: Colors.pink,
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
                  "Tasty!",
                  style: TextStyle(
                    fontSize: sizeOf,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
          ),

          //Tab bar
          TabBar(
            indicatorColor: Colors.blueGrey[shadeOf],
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 16.0,
            dividerColor: Colors.transparent,
            controller: _tabController,
            tabs: [
              TabHeaderComponent(
                iconPath: 'lib/icons/sushi.png',
                selected: _tabController.index == 0,
              ),
              TabHeaderComponent(
                iconPath: 'lib/icons/donut.png',
                selected: _tabController.index == 1,
              ),
              TabHeaderComponent(
                iconPath: 'lib/icons/burger.png',
                selected: _tabController.index == 2,
              ),
            ],
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
                controller: _tabController,
                children: [
                  SushiTab(),
                  DonutTab(),
                  BurgerTab(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
