import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Favorites'),
        actions: [
          // TextButton
          TextButton(
            onPressed: () {
              //ketika tombol "Edit" ditekan
            },
            style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 255, 255, 255), // Mengatur warna latar belakang tombol menjadi hijau
              side: BorderSide(color: Colors.green, width: 2),
            ),
            child: Text(
              'edit',
              style: TextStyle(
                color: Colors.green,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildCategoryItem(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                    'GoRide'),
                    SizedBox(width: 20),
                buildCategoryItem(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                    'GoCar'),
                    SizedBox(width: 20),
                buildCategoryItem(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                    'GoFood'),
                    SizedBox(width: 20),
                buildCategoryItem(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                    'GoSend'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildCategoryItem(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                    'GoMart'),
                    SizedBox(width: 20),
                buildCategoryItem(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                    'GoPulsa'),
                    SizedBox(width: 20),
                buildCategoryItem(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                    'Check-In'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCategoryItem(String imagePath, String title) {
    return Column(
      children: [
        Image.network(
          imagePath,
          width: 100,
          height: 100,
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
