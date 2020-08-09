import 'package:flutter/material.dart';
import 'download.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reels Downloader',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: ReelsDownloader(),
    );
  }
}
