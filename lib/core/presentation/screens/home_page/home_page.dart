import 'package:flutter/material.dart';
import 'package:flutter_google_books_corsov2/core/presentation/screens/home_page/widgets/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: HomeBody(),
        ),
      ),
    );
  }
}
