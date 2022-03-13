import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_library/presentation/home/tab_bar_page/all_cards_page/all_cards_screen.dart';
import 'package:my_library/presentation/home/tab_bar_page/home_page/home_screen.dart';
import 'package:my_library/presentation/home/tab_bar_page/marked_cards_page/marked_screen.dart';

class TabScreen extends HookConsumerWidget {
  const TabScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 3);
    return Scaffold(
      body: GFTabBarView(
        controller: tabController,
        children: const [HomeScreen(), MarkedCardsScreen(), AllCardsScreen()],
      ),
      bottomNavigationBar: GFTabBar(
        tabBarColor: Colors.lime[50],
        length: 3,
        controller: tabController,
        labelColor: Colors.black,
        tabBarHeight: 60,
        tabs: const [
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.bookmark),
          ),
          Tab(
            icon: Icon(Icons.all_inbox),
          ),
        ],
      ),
    );
  }
}