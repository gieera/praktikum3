import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                buildCategoryItem('assets/goride.jpg', 'GoRide'),
                buildCategoryItem('assets/gocar.jpg', 'GoCar'),
                buildCategoryItem('assets/gofood.jpg', 'GoFood'),
                buildCategoryItem('assets/gosend.jpg', 'GoSend'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildCategoryItem('assets/gomart.jpg', 'GoMart'),
                buildCategoryItem('assets/gopulsa.jpg', 'GoPulsa'),
                buildCategoryItem('assets/checkin.jpg', 'Check-In'),
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
        Image.asset(
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
