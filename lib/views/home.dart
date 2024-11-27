import 'package:flutter/material.dart';

import 'package:project_flutter/widgets/tab_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.person, color: Colors.white),
                onPressed: () {},
              ),
              const Icon(
                Icons.close,
                color: Colors.white,
                size: 30,
              ),
              IconButton(
                icon: const Icon(Icons.settings, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Para ti'),
              Tab(text: 'Siguiendo'),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
          ),
        ),
        body: const TabBarViewWidget(),
        
      ),
    );
  }
}
