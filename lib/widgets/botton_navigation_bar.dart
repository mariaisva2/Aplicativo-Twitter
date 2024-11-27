import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final int currentPageIndex;
  final Function(int) onTabSelected;

  const BottomNavigationBarWidget({
    super.key,
    required this.currentPageIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      
      backgroundColor: Colors.black, 
      selectedIndex: currentPageIndex,
      onDestinationSelected: onTabSelected,
      
      destinations: const [
        NavigationDestination(
          selectedIcon: Icon(Icons.home_filled, color: Colors.white),
          icon: Icon(Icons.home_filled, color: Colors.grey),
          label: '',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.search, color: Colors.white),
          icon: Icon(Icons.search, color: Colors.grey),
          label: '',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.browser_not_supported, color: Colors.white),
          icon: Icon(Icons.browser_not_supported, color: Colors.grey),
          label: '',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.notifications_none_rounded, color: Colors.white),
          icon: Icon(Icons.notifications_none_rounded, color: Colors.grey),
          label: '',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.mail_outline, color: Colors.white),
          icon: Icon(Icons.mail_outline, color: Color.fromARGB(221, 241, 231, 231)),
          label: '',
        ),
         NavigationDestination(
          selectedIcon: Icon(Icons.group_rounded, color: Colors.white),
          icon: Icon(Icons.group_rounded, color: Colors.grey),
          label: '',
        ),
      ],
    );
  }
}
