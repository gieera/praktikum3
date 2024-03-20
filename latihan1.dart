import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Card"),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, String>> dataList = [
    {
      "name": "Engie",
      "hobby": "Painting",
      "profileImageAsset": "assets/Engie.jpg"
    },
    {
      "name": "Ridha",
      "hobby": "Reading",
      "profileImageAsset": "assets/Ridha.jpg"
    },
    {
      "name": "Reni",
      "hobby": "Cooking",
      "profileImageAsset": "assets/Reni.jpg"
    }
  ];

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataList.length,
      itemBuilder: (BuildContext context, int index) {
        return CardItem(
          name: dataList[index]['name']!,
          hobby: dataList[index]['hobby']!,
          profileImageAsset: dataList[index]['profileImageAsset']!,
        );
      },
    );
  }
}

class CardItem extends StatelessWidget {
  final String name;
  final String hobby;
  final String profileImageAsset;

  const CardItem({
    required this.name,
    required this.hobby,
    required this.profileImageAsset,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {},
        leading: CircleAvatar(
          backgroundImage: AssetImage(profileImageAsset),
        ),
        trailing: const Icon(Icons.more_vert),
        title: Text(name),
        subtitle: Text(hobby),
        tileColor: Colors.white70,
      ),
    );
  }
}
