import 'package:add_to_app_flutter_module/main.dart';
import 'package:flutter/material.dart';

class BottomBarPage extends StatefulWidget {
  const BottomBarPage({super.key});

  @override
  State<BottomBarPage> createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int _selectedIndex = 0;
  final BottomNavigationBarType _bottomNavType =
      BottomNavigationBarType.shifting;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          if (_selectedIndex == 0)
            const Expanded(
              child: HeroListPage(),
            )
          else if (_selectedIndex == 1)
            const Expanded(
              child: NewsFeedPage(),
            )
          else if (_selectedIndex == 2)
            const Expanded(
              child: SettingsPage(),
            )
          else
            const Expanded(
              child: OnboardingPage(),
            )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff6200ee),
        unselectedItemColor: const Color(0xff757575),
        type: _bottomNavType,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: _navBarItems,
      ),
    );
  }
}

const _navBarItems = [
  BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    activeIcon: Icon(Icons.home_rounded),
    label: 'Hero',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.newspaper_outlined),
    activeIcon: Icon(Icons.newspaper_rounded),
    label: 'Feeds',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.settings_outlined),
    activeIcon: Icon(Icons.settings_rounded),
    label: 'Settings',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.new_label_outlined),
    activeIcon: Icon(Icons.new_label_rounded),
    label: 'Onboarding',
  ),
];
