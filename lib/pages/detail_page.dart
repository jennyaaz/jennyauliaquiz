import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String imageUrl;

  const DetailPage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Image.network(imageUrl),
      ),
    );
  }
}
