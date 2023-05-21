import 'package:flutter/material.dart';

import 'package:money_tracker/ui/widgets/expense/expense_view.dart';
import 'package:money_tracker/ui/widgets/profile/profile_view.dart';

class TabItem {
  final String title;
  final Icon icon;
  TabItem({required this.title, required this.icon});
}

final List<TabItem> tabBars = [
  TabItem(title: 'Расходы', icon: const Icon(Icons.credit_card)),
  TabItem(title: 'Профиль', icon: const Icon(Icons.person)),
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late TabController _tabController;
  int _currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabBars.length, vsync: this);

    _tabController.addListener(() {
      setState(() {
        _currentTabIndex = _tabController.index;
      });
    });
  }

  void onTapBottomNavigationBar(index) {
    setState(() {
      _tabController.index = index;
      _currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: TabBarView(
        controller: _tabController,
        children: const [
          ExpenseView(),
          ProfileView(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 16,
        unselectedFontSize: 14,
        onTap: onTapBottomNavigationBar,
        currentIndex: _currentTabIndex,
        items: [
          for (final item in tabBars)
            BottomNavigationBarItem(
              label: item.title,
              icon: item.icon,
            )
        ],
      ),
    );
  }
}
