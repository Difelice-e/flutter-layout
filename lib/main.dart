import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(
      children: <Widget>[
        Positioned(right: 0, top: 0, bottom: 0, child: Sidebar()),
        Positioned(left: 0, top: 0, bottom: 0, right: 100, child: Content())
      ],
    ));
  }
}

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      color: Colors.grey.shade200,
      child: SafeArea(
          child: Column(
        children: <Widget>[
          Expanded(child: Container()),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add, size: 20),
          )
        ],
      )),
    );
  }
}

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Contacts",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 32,
          ),
          Contact(
            name: "Mario Rossi",
            address: "Corso Vittorio Emanuele II, Torino",
          ),
          Contact(
            name: "Giuseppe Rozzi",
            address: "Via della Liberazione, Roma",
          ),
          Contact(
            name: "Franco Armani",
            address: "Piazza Giuseppe Mazzini, Napoli",
          ),
        ],
      ),
    ));
  }
}

class Contact extends StatelessWidget {
  const Contact({required this.name, required this.address});

  final String name;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      title: Text(name, style: TextStyle(fontWeight: FontWeight.w500)),
      subtitle: Text(address, style: TextStyle(fontSize: 12)),
      leading: Icon(Icons.person, color: Colors.indigo),
    ));
  }
}
