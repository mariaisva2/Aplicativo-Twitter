import 'package:flutter/material.dart';
import 'package:project_flutter/widgets/cart.dart';


class TabBarViewWidget extends StatelessWidget {
  const TabBarViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        PostList(), // Pestaña "Para ti"
        PostList(), // Pestaña "Siguiendo"
      ],
    );
  }
}

class PostList extends StatelessWidget {
  const PostList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const PostCard(
          profileImage: 'assets/image/twitter-x-logo.png', // Imagen de perfil
          username: 'Radio Genoa', // Nombre del usuario
          alias: 'RadioGenoa', // Alias o username
          timestamp: 'Nov 24', // Tiempo de publicación
          content: 'Women in Islam.', // Contenido del post
          image: 'assets/image/twitter-x-logo.png', // Imagen del post
          likes: 1600, // Likes
          retweets: 3300, // Retweets
          comments: 10000, 
          views: 8000000, 
          
        );
      },
    );
  }
}
