import 'package:flutter/material.dart';

class BodyInitial extends StatelessWidget {
  const BodyInitial({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          SizedBox(
            height: 320,
            child: Image.asset(
              'assets/images/homepage.png',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Digita qualcosa sulla barra di ricerca',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
