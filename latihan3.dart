import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Akun UPN "Veteran" Jawa Timur',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/header.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 180,
            left: 20,
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/profile.jpg'),
              backgroundColor: Colors.white,
            ),
          ),
              Positioned(
                top: 0,
                left: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.5), 
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white), 
                    onPressed: () {
                      // untuk kembali ke layar sebelumnya
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 16, 
                child: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.5), 
                  child: IconButton(
                    icon: Icon(Icons.more_vert, color: Colors.white),
                    onPressed: () {
                      print('Overflow menu button tapped');
                    },
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 64, 
                child: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.5), 
                  child: IconButton(
                    icon: Icon(Icons.search, color: Colors.white), 
                    onPressed: () {
                      print('Search button tapped');
                    },
                  ),
                ),
              ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 280), // Jarak antara header dan konten profil
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black, 
                    ),
                    child: Text(
                      'Follow',
                      style: TextStyle(
                        fontSize: 20,
                        color:Colors.white),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'UPN Veteran Jawa Timur',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        '@upnvjt_official',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'AKUN RESMI UPN "VETERAN" JAWA TIMUR\nDikelola oleh Humas UPN "Veteran" Jawa Timur\nKampus Bela Negara',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                        ),
                      ),
                       GestureDetector(
                            onTap: () {
                              // Fungsi untuk menangani ketika teks ditekan
                              print('Translate bio tapped');
                            },
                            child: Text(
                              'Translate bio',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}