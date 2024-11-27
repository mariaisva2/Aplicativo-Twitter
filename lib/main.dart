import 'package:flutter/material.dart';
import 'package:project_flutter/views/IA_views.dart';
import 'package:project_flutter/views/email.dart';
import 'package:project_flutter/views/groups.dart';
import 'package:project_flutter/views/home.dart';
import 'package:project_flutter/views/notifi.dart';
import 'package:project_flutter/views/search.dart';
import 'package:project_flutter/widgets/botton_navigation_bar.dart';


void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Cambiar el tema a oscuro
      theme: ThemeData.dark().copyWith(
         // Mantener Material 3 activado si lo deseas
        scaffoldBackgroundColor: Colors.black, // Fondo oscuro
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black, // Fondo del Bottom Navigation Bar
          selectedItemColor: Colors.black, // Color del item seleccionado
          unselectedItemColor: Colors.black, // Color de los items no seleccionados
        ),
      ),
      home: const NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  final List<Widget> _pages = const [
    HomeView(),
    NotificationsView(),
    MessagesView(),
    ExploreView(),
    SavedView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarWidget(
        currentPageIndex: currentPageIndex,
        onTabSelected: (index) => setState(() => currentPageIndex = index),
      ),
      body: _pages[currentPageIndex],
    );
  }
}
