import 'package:flutter/material.dart';
import 'package:running_app/pages/history.dart';
import 'package:running_app/pages/home.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final _screens = const [HomePage(), HistoryPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: _renderBottomNavigationBar(context),
    );
  }

  Widget _renderBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history_rounded),
          label: 'History',
        ),
      ],
      currentIndex: _currentIndex,
      selectedItemColor: Colors.indigo,
      onTap: ((value) {
        setState((() => _currentIndex = value));
      }),
    );
  }
}
