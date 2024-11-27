import 'package:flutter/material.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Notifications'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'All'),
              Tab(text: 'Verified'),
              Tab(text: 'Mentions'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            
            NotificationsList(),
            Center(child: Text('Verified notifications')),
            Center(child: Text('Mentions notifications')),
          ],
        ),
      ),
    );
  }
}

class NotificationsList extends StatelessWidget {
  const NotificationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2, 
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.notifications, color: Colors.black),
          title: const Text(
            'There was a login to your account',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            '@MariaVC2921 from a new device on ${index + 25} nov. 2024. Review it now.',
          ),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        );
      },
    );
  }
}
