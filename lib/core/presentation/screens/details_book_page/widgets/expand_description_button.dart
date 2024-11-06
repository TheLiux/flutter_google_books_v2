import 'package:flutter/material.dart';

class ExpandDescriptionButton extends StatelessWidget {
  final VoidCallback expandDescription;
  final String label;

  const ExpandDescriptionButton({
    super.key,
    required this.expandDescription,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => expandDescription(),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Theme.of(context).colorScheme.primary,
              decoration: TextDecoration.underline,
              decorationColor: Theme.of(context).colorScheme.primary,
            ),
      ),
    );
  }
}
