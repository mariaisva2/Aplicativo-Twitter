import 'package:flutter/material.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({super.key});

  @override
  State<NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this); 
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search, color: Colors.white),
                  hintText: 'Buscar',
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),
          ),

         
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Para ti'),
              Tab(text: 'Tendencias'),
              Tab(text: 'Noticias'),
              Tab(text: 'Deportes'),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.blue,
          ),

         
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildTrendingContent('Para ti'), 
                _buildTrendingContent('Tendencias'),
                _buildTrendingContent('Noticias'),
                _buildTrendingContent('Deportes'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTrendingContent(String tabName) {
    final List<Map<String, String>> trendingItems = [
      {'title': '#DOMINICA', 'subtitle': '3,600 post'},
      {'title': '#REPUBLICA DOMINICANA', 'subtitle': '100,000 post'},
      {'title': '#FIFA2024', 'subtitle': '200,000 post'},
      {'title': '#MUNDIAL2024', 'subtitle': '150,000 post'},
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: trendingItems.length,
        itemBuilder: (context, index) {
          final item = trendingItems[index];
          return Card(
            color: Colors.grey[850],
            child: ListTile(
              title: Text(item['title']!, style: const TextStyle(color: Colors.white)),
              subtitle: Text(item['subtitle']!, style: TextStyle(color: Colors.grey[400])),
              trailing: const Icon(Icons.more_vert, color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
