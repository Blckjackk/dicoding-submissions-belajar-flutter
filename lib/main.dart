import 'package:flutter/material.dart';
import 'pages/main_pages.dart';

void main() {
  runApp(PerpustakaanApp());
}


class PerpustakaanApp extends StatelessWidget {
  const PerpustakaanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: MainScreen()
    );
  }
}

