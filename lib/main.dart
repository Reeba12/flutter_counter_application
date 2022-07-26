import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListScreen(),
    );
  }
}

class ListScreen extends StatelessWidget {
  ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = List.generate(100, (index) => "Dost $index");
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(users[index]),
            subtitle: const Text('She is reeba friend'),
            leading: Icon(
              index == 6 ? Icons.star : Icons.people_alt_outlined,
              color: index == 6 ? Colors.orange : null,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
          );
        },
        itemCount: users.length,
      ),
    );
  }
}
