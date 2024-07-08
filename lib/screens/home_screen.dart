import 'package:flutter/material.dart';
import 'package:flutter_myntra_clone/screens/categories/categories.dart';
import 'package:flutter_myntra_clone/screens/home.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedPageIndex = 0;

  void _selectTab(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  Widget _getPage() {
    final List<Widget> _pages = [
      Home(),
      Categories(),
      Text('Studio'),
      Text('Explore'),
      Text('Profile'),
    ];

    return _pages[_selectedPageIndex];
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectTab,
        backgroundColor: theme.colorScheme
            .secondary, // Use secondary color from theme's colorScheme
        unselectedItemColor: Colors.black87,
        selectedItemColor: Color.fromRGBO(255, 63, 108, 1),
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: theme.colorScheme.secondary,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: theme.colorScheme.secondary,
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            backgroundColor: theme.colorScheme.secondary,
            icon: Icon(Icons.tv_outlined),
            label: 'Studio',
          ),
          BottomNavigationBarItem(
            backgroundColor: theme.colorScheme.secondary,
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            backgroundColor: theme.colorScheme.secondary,
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
      body: _getPage(),
    );
  }
}
