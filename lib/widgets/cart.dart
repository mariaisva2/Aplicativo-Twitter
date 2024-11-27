import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String profileImage; // Nueva propiedad para la foto de perfil
  final String username; // Nombre del usuario
  final String alias; // Alias o username del usuario
  final String timestamp; // Fecha o tiempo de publicación
  final String content; // Contenido del post
  final String image; // Imagen del post
  final int likes; // Número de likes
  final int retweets; // Número de retweets
  final int comments; // Número de comentarios
  final int views; // Número de visualizaciones

  const PostCard({
    super.key,
    required this.profileImage,
    required this.username,
    required this.alias,
    required this.timestamp,
    required this.content,
    required this.image,
    required this.likes,
    required this.retweets,
    required this.comments,
    required this.views,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            Row(
              children: [
               
                CircleAvatar(
                  backgroundImage: AssetImage(profileImage), // Imagen del perfil
                  radius: 20, // Tamaño de la foto
                ),
                const SizedBox(width: 8),
                // Nombre, alias y tiempo
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      username, // Nombre del usuario
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '@$alias • $timestamp', // Alias y tiempo
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const Spacer(), 
                // Menú de opciones
                IconButton(
                  icon: const Icon(Icons.more_horiz, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Contenido del post
            Text(
              content,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
            const SizedBox(height: 8),
            // Imagen del post
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(image, fit: BoxFit.cover),
            ),
            const SizedBox(height: 8),
            // Fila de interacciones: comentarios, retweets, likes, vistas
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildIconText(Icons.comment, comments.toString()),
                _buildIconText(Icons.repeat, retweets.toString()),
                _buildIconText(Icons.favorite, likes.toString()),
                _buildIconText(Icons.visibility, views.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconText(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey, size: 18),
        const SizedBox(width: 4),
        Text(text, style: const TextStyle(color: Colors.grey, fontSize: 12)),
      ],
    );
  }
}
