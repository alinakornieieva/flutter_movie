import 'package:flutter/material.dart';
import 'package:flutter_movie/features/list/list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTab = 0;

  void selectTab(int index) {
    if (index == _selectedTab) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TheMovieDB')),
      body: IndexedStack(
          index: _selectedTab,
          children: const [Text('Home'), List(), Text('TV shows')]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Movies'),
            BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'TV shows')
          ],
          onTap: selectTab),
    );
  }
}
