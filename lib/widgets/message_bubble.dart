import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String message;
  final Alignment alignment;

  const MessageBubble({
    super.key,
    required this.message,
    required this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Align(
      alignment: alignment,
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          message,
          style: theme.textTheme.bodyLarge!
              .copyWith(color: theme.colorScheme.onPrimary),
        ),
      ),
    );
  }
}
