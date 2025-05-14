import 'package:flutter/material.dart';

void main() {
  //actualizacion
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfileScreen extends StatelessWidget {
  final List<Map<String, String>> followingUsers = [
    {'name': 'LALO', 'avatar': 'https://i.pravatar.cc/150?img=1'},
    {'name': 'SERGIO', 'avatar': 'https://i.pravatar.cc/150?img=2'},
    {'name': 'TAVO', 'avatar': 'https://i.pravatar.cc/150?img=3'},
    {'name': 'LEYSI', 'avatar': 'https://i.pravatar.cc/150?img=4'},
    {'name': 'JOSY', 'avatar': 'https://i.pravatar.cc/150?img=5'},
    {'name': 'TOLEDO', 'avatar': 'https://i.pravatar.cc/150?img=6'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text('JosyPerez'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey[300],
            child: Icon(Icons.person, size: 50),
          ),
          SizedBox(height: 10),
          Text(
            'JosySopas',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: followingUsers.length,
              itemBuilder: (context, index) {
                final user = followingUsers[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user['avatar']!),
                  ),
                  title: Text(user['name']!),
                  trailing: Text(
                    'Following',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
