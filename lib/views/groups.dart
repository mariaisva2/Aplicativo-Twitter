import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Perfil',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
