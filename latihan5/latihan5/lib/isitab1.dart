import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
          //gunakan listview builder
          child: ListView.builder(
            itemCount: 20, // Ubah sesuai kebutuhan
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(border: Border.all()),
                padding: const EdgeInsets.all(14),
                child: Text("Data ke $index "),
              );
            },
          ),
        ),
      ),
    );
  }
}
