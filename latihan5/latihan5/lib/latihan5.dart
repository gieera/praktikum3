import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: "For You"),
                Tab(text: "Following")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // Menggunakan ListView.builder pada tab pertama
              ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(border: Border.all()),
                    padding: const EdgeInsets.all(14),
                    child: Text("Data ke $index "),
                  );
                },
              ),
              Center(child: Text("isi tab 2"))
            ],
          ),
        ),
      ),
    );
  }
}
