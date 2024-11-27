import 'package:flutter/material.dart';

class SavedView extends StatelessWidget {
  const SavedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Guardados',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}

